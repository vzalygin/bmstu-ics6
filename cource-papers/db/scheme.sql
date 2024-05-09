-- enums
DROP TYPE IF EXISTS ORDER_STATUS_ENUM;
CREATE TYPE ORDER_STATUS_ENUM AS ENUM  (
	'assembling', 'assembled', 'delivering', 'closed', 'cancelled'
);

DROP TYPE IF EXISTS DELIVERY_STATUS_ENUM;
CREATE TYPE DELIVERY_STATUS_ENUM AS ENUM (
	'scheduled', 'on_the_way', 'closed'
);

DROP TYPE IF EXISTS EMPLOYEE_ROLE_ENUM;
CREATE TYPE EMPLOYEE_ROLE_ENUM AS ENUM (
	'courier', 'assembler', 'manager'
);

DROP TYPE IF EXISTS PRODUCT_CATEGORY_ENUM;
CREATE TYPE PRODUCT_CATEGORY_ENUM AS ENUM (
	'alcohol', 'bakery', 'bread', 'cheese', 'fish_and_seafood', 'fruit', 'juice', 'lemonade', 'meat', 'milk_and_egg', 'sausage', 'snack', 'water', 'yogurt'
);

DROP TYPE IF EXISTS SHIPMENT_STATUS_ENUM;
CREATE TYPE SHIPMENT_STATUS_ENUM AS ENUM (
	'on_the_way', 'delivered', 'accepted', 'run_out', 'expired'
);

-- tables
CREATE TABLE IF NOT EXISTS client (
	id SERIAL PRIMARY KEY,
	"name" VARCHAR(256) NOT NULL,
	lastname VARCHAR(256) NOT NULL,
	saved_addresses VARCHAR(1024)[] NOT NULL,
	phone_number VARCHAR(256) NOT NULL,
	email VARCHAR(256) NOT NULL
);

CREATE TABLE IF NOT EXISTS "order" (
	id SERIAL,
	"status" ORDER_STATUS_ENUM NOT NULL DEFAULT 'assembling',
	client_id INT NOT NULL,
	total_price INT NOT NULL CHECK (total_price >= 0) DEFAULT 100,
	"address" VARCHAR(1024) NOT NULL,
	creation_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	delivery_date TIMESTAMP,
	close_date TIMESTAMP,
	store_id INT NOT NULL,

	PRIMARY KEY (id),

	CHECK (delivery_date = null or delivery_date >= creation_date),
	CHECK (close_date = null or delivery_date != null and close_date >= delivery_date)
);

CREATE TABLE IF NOT EXISTS delivery (
	id SERIAL,
	order_id INT NOT NULL,
	courier_id INT NOT NULL,
	"status" DELIVERY_STATUS_ENUM,

	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS employee (
	id SERIAL,
	"name" VARCHAR(256) NOT NULL,
	lastname VARCHAR(256) NOT NULL,
	"role" EMPLOYEE_ROLE_ENUM NOT NULL,

	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS product (
	id SERIAL,
	"name" VARCHAR(256) NOT NULL,
	"description" TEXT NOT NULL,
	category PRODUCT_CATEGORY_ENUM NOT NULL,
	image_url VARCHAR(1024) NOT NULL,
	price INT NOT NULL,

	PRIMARY KEY (id),

	CHECK (price >= 0)
);

CREATE TABLE IF NOT EXISTS shipment (
	id SERIAL,
	store_id INT NOT NULL,
	product_id INT NOT NULL,
	delivery_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	expiration_date TIMESTAMP NOT NULL,
	product_amount INT NOT NULL,
	"status" SHIPMENT_STATUS_ENUM NOT NULL DEFAULT 'delivered',

	PRIMARY KEY (id),

	CHECK (product_amount >= 0)
);

CREATE TABLE IF NOT EXISTS assortment (
	store_id INT NOT NULL,
	product_id INT NOT NULL,
	amount INT NOT NULL,

	PRIMARY KEY (store_id, product_id),

	CHECK (amount >= 0)
);

CREATE TABLE IF NOT EXISTS assembling (
	product_id INT NOT NULL,
	order_id INT NOT NULL,
	product_amount INT NOT NULL CHECK (product_amount > 0),
	creation_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	close_date TIMESTAMP,
	
	PRIMARY KEY (product_id, order_id),
	
	CHECK (close_date = null or close_date > creation_date)
);

CREATE TABLE IF NOT EXISTS store (
	id SERIAL,
	"address" VARCHAR(1024) NOT NULL,
	"name" VARCHAR(256) NOT NULL,
	"owner_id" INT NOT NULL,

	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS product_location (
	product_id INT NOT NULL,
	store_id INT NOT NULL,
	"description" VARCHAR(256) NOT NULL,

	PRIMARY KEY (product_id, store_id)
);

CREATE TABLE IF NOT EXISTS shift (
	employee_id INT NOT NULL,
	store_id INT NOT NULL,
	begin_date TIMESTAMP NOT NULL,
	end_date TIMESTAMP NOT NULL,

	PRIMARY KEY (employee_id, store_id),

	CHECK (end_date > begin_date)
);

-- references
ALTER TABLE "order" ADD CONSTRAINT fk_order_client FOREIGN KEY (client_id) REFERENCES client;
ALTER TABLE "order" ADD CONSTRAINT fk_order_store FOREIGN KEY (store_id) REFERENCES store;

ALTER TABLE delivery ADD CONSTRAINT fk_delivery_courier FOREIGN KEY (courier_id) REFERENCES employee;
ALTER TABLE delivery ADD CONSTRAINT fk_delivery_order FOREIGN KEY (order_id) REFERENCES "order";

ALTER TABLE shipment ADD CONSTRAINT fk_shipment_store FOREIGN KEY (store_id) REFERENCES store;
ALTER TABLE shipment ADD CONSTRAINT fk_shipment_product FOREIGN KEY (product_id) REFERENCES product;

ALTER TABLE store ADD CONSTRAINT fk_store_owner FOREIGN KEY ("owner") REFERENCES employee;

ALTER TABLE assembling ADD CONSTRAINT fk_assembling_product FOREIGN KEY (product_id) REFERENCES product;
ALTER TABLE assembling ADD CONSTRAINT fk_assembling_order FOREIGN KEY (order_id) REFERENCES "order";

ALTER TABLE product_location ADD CONSTRAINT fk_product_location_product FOREIGN KEY (product_id) REFERENCES product;
ALTER TABLE product_location ADD CONSTRAINT fk_product_location_store FOREIGN KEY (store_id) REFERENCES store;

ALTER TABLE shift ADD CONSTRAINT fk_shift_employee FOREIGN KEY (employee_id) REFERENCES employee;
ALTER TABLE shift ADD CONSTRAINT fk_shift_store FOREIGN KEY (store_id) REFERENCES store;

ALTER TABLE assortment ADD CONSTRAINT fk_assortment_store FOREIGN KEY (store_id) REFERENCES store;
ALTER TABLE assortment ADD CONSTRAINT fk_assortment_product FOREIGN KEY (product_id) REFERENCES product;

-- triggers

-- перевод заказа в status=assembled, когда все assembling имеют close_date
CREATE OR REPLACE FUNCTION set_order_assembled_on_assembly_ready_func()
RETURNS TRIGGER AS 
$$
BEGIN
	IF 
		(SELECT count(*) 
		 FROM assembling 
		 WHERE assembling.order_id = NEW.order_id AND assembling.close_date = null) 
		= 0
	THEN
		UPDATE "order" 
		SET "status" = 'assembled' 
		WHERE "order".id = NEW.order_id;
	END IF;
	RETURN NEW;
END; 
$$
LANGUAGE 'plpgsql';
CREATE OR REPLACE TRIGGER set_order_assembled_on_assembly_ready
	AFTER UPDATE
	ON assembling
	FOR EACH ROW
	EXECUTE PROCEDURE set_order_assembled_on_assembly_ready_func();

-- когда shipment имеют статус accepted, то добавлять продукт в assortment
CREATE OR REPLACE FUNCTION update_assortment_on_shipment_accepted_func()
RETURNS TRIGGER AS
$$
BEGIN
	IF 
		OLD."status" != NEW."status" AND NEW."status" = 'accepted'
	THEN
		IF (
			SELECT count(*) FROM assortment WHERE assortment.store_id = NEW.store_id AND assortment.product_id = NEW.product_id 
		) = 0 THEN
			INSERT INTO assortment (store_id, product_id, amount)
			VALUES (NEW.store_id, NEW.product_id, 0);
		END IF;
		UPDATE assortment 
		SET amount = amount + NEW.product_amount
		WHERE assortment.store_id = NEW.store_id AND assortment.product_id = NEW."product_id";
	END IF;
	RETURN NEW;
END;
$$
LANGUAGE 'plpgsql';
CREATE OR REPLACE TRIGGER update_assortment_on_shipment_accepted
	AFTER UPDATE
	ON shipment
	FOR EACH ROW
	EXECUTE PROCEDURE update_assortment_on_shipment_accepted_func();

-- когда создаются assembling, то убавлять из ассортимента количество товара
CREATE OR REPLACE FUNCTION decrease_product_amount_on_new_assembling_func()
RETURNS TRIGGER AS
$$
DECLARE
	store_id_var INT := (
		SELECT "order".store_id FROM "order" WHERE "order".id = NEW.order_id
	);
BEGIN
	UPDATE assortment 
	SET amount = amount - NEW.product_amount
	WHERE assortment.store_id = store_id_var AND assortment.product_id = NEW.product_id;
	RETURN NEW;
END;
$$
LANGUAGE 'plpgsql';
CREATE OR REPLACE TRIGGER decrease_product_amount_on_new_assembling
	BEFORE INSERT
	ON assembling
	FOR EACH ROW
	EXECUTE PROCEDURE decrease_product_amount_on_new_assembling_func();

-- когда в shipment кончаются товары, то оно объявляется run_out
CREATE OR REPLACE FUNCTION set_shipment_run_out_on_zero_amount_func()
RETURNS TRIGGER AS
$$
BEGIN
	IF
		NEW.product_amount = 0 AND NEW.status = 'accepted'
	THEN
		UPDATE shipment
		SET "status" = 'run_out'
		WHERE shipment.id = NEW.id;
	END IF;
	RETURN NEW;
END;
$$
LANGUAGE 'plpgsql';
CREATE OR REPLACE TRIGGER set_shipment_run_out_on_zero_amount
	AFTER UPDATE
	ON shipment
	FOR EACH ROW
	EXECUTE PROCEDURE set_shipment_run_out_on_zero_amount_func();

-- проставлять delivery_date и close_date в order при измении статуса
CREATE OR REPLACE FUNCTION set_order_timestamp_on_status_change_func()
RETURNS TRIGGER AS
$$
BEGIN
	IF
		NEW."status" = 'delivering' AND OLD."status" != 'delivering'
	THEN
		UPDATE "order"
		SET delivery_date = CURRENT_TIMESTAMP
		WHERE "order".id = NEW.id;
	END IF;
	IF 
		(NEW."status" = 'closed' AND OLD."status" != 'closed') OR 
		(NEW."status" = 'cancelled' AND OLD."status" != 'cancelled')
	THEN
		UPDATE "order"
		SET close_date = CURRENT_TIMESTAMP
		WHERE "order".id = NEW.id;
	END IF;
	RETURN NEW;
END;
$$
LANGUAGE 'plpgsql';
CREATE OR REPLACE TRIGGER set_order_timestamp_on_status_change
	AFTER UPDATE
	ON "order"
	FOR EACH ROW
	EXECUTE PROCEDURE set_order_timestamp_on_status_change_func();

-- при убавлении товаров в assortment убавляется количество товаров из поставок:
--		берется самая ранняя (по срокам просрочки) принятая доставка и из нее вычитается заказанное количество продуктов
--		если продуктов больше, то доставка помечается run_out и ищется следующая
CREATE OR REPLACE FUNCTION decrease_shipment_product_amount_on_assortment_decrease_func()
RETURNS TRIGGER AS
$$
DECLARE
	remaining INT := NEW.amount;
	shipment_r RECORD;
BEGIN
	IF OLD.amount > NEW.amount THEN
		FOR shipment_r IN
			(SELECT * 
			FROM shipment 
			WHERE shipment.store_id = NEW.store_id AND shipment.product_id = NEW.product_id
			ORDER BY expiration_date ASC)
		LOOP
			IF remaining > 0 THEN
				IF remaining > shipment_r.product_amount THEN
					UPDATE shipment
					SET product_amount = 0
					WHERE shipment.id = shipment_r.id;
					remaining := remaining - shipment_r.product_amount;
				ELSE
					UPDATE shipment
					SET product_amount = product_amount - remaining
					WHERE shipment.id = shipment_r.id;
					remaining := 0;
				END IF;
			END IF;
		END LOOP;
	END IF;
	RETURN NEW;
END;
$$
LANGUAGE 'plpgsql';
CREATE OR REPLACE TRIGGER decrease_shipment_product_amount_on_assortment_decrease
	AFTER UPDATE
	ON assortment
	FOR EACH ROW
	EXECUTE PROCEDURE decrease_shipment_product_amount_on_assortment_decrease_func();

-- если заказ cancalled, то возвращать продукты в ассортмент
CREATE OR REPLACE FUNCTION return_products_to_assortment_on_order_cancel_func()
RETURNS TRIGGER AS
$$
DECLARE
	assembling_r RECORD;
BEGIN
	IF NEW."status" = 'cancelled' AND OLD."status" != 'cancelled' THEN
		FOR assembling_r IN
			(SELECT * 
			FROM assembling
			WHERE assembling.order_id = NEW.id)
		LOOP
			UPDATE assortment
			SET amount = amount + assembling_r.product_amount
			WHERE assortment.store_id = NEW.store_id AND assortment.product_id = assembling_r.product_id;
		END LOOP;
	END IF;
	RETURN NEW;
END;
$$
LANGUAGE 'plpgsql';
CREATE OR REPLACE TRIGGER return_products_to_assortment_on_order_cancel
	AFTER UPDATE
	ON "order"
	FOR EACH ROW
	EXECUTE PROCEDURE return_products_to_assortment_on_order_cancel_func();

-- докидывать в price цену при добавлнии assemling
CREATE OR REPLACE FUNCTION upd_price_on_assembling_func()
RETURNS TRIGGER AS
$$
DECLARE
	old_price INT;
	new_price INT;
BEGIN
	old_price := (SELECT total_price FROM "order" WHERE "order".id = NEW.order_id);
	UPDATE "order"
	SET total_price = total_price + (SELECT product.price FROM product WHERE product.id = NEW.product_id)
	WHERE "order".id = NEW.order_id;
	new_price := (SELECT total_price FROM "order" WHERE "order".id = NEW.order_id);
	IF new_price >= 1000 AND old_price < 1000 THEN
		UPDATE "order"
		SET total_price = total_price - 100
		WHERE "order".id = NEW.order_id;
	END IF;
	RETURN NEW;
END;
$$
LANGUAGE 'plpgsql';
CREATE OR REPLACE TRIGGER upd_price_on_assembling
	AFTER INSERT
	ON assembling
	FOR EACH ROW
	EXECUTE PROCEDURE upd_price_on_assembling_func();

-- views

-- заказы со список продуктов
CREATE OR REPLACE VIEW client_order AS (
	WITH order_product AS (
		SELECT assembling.order_id AS order_id, product."name" AS product_name, assembling.product_amount AS product_amount
		FROM assembling
		JOIN product ON product.id = assembling.product_id
	)
	SELECT "order".id, "order"."status", "order".client_id, "order".total_price, "order".address, "order".creation_date, "order".close_date, array_agg(order_product.product_name) as products, array_agg(order_product.product_amount) as amounts
	FROM "order"
	JOIN order_product ON order_product.order_id = "order".id
	GROUP BY "order".id
);

-- ассортименты магизинов с адресами
CREATE OR REPLACE VIEW client_assortment AS (
	SELECT store.address, product.name, assortment.amount
	FROM assortment
	JOIN product ON product.id = assortment.product_id
	JOIN store ON store.id = assortment.store_id
);

-- заказы с адресами
CREATE OR REPLACE VIEW courier_delivery AS (
	SELECT "order".id, "order"."address", employee.id as courier_id, employee.name, employee.lastname
	FROM delivery, "order", employee
	WHERE delivery.order_id = "order".id AND delivery.courier_id = employee.id AND delivery."status" != 'closed'
);

-- информация для сборки заказа 
CREATE OR REPLACE VIEW assembler_assembling AS (
	SELECT "order".store_id, assembling.order_id, assembling.product_amount, product_location."description"
	FROM "order", assembling, product, product_location
	WHERE 
		"order".id = assembling.order_id AND 
		assembling.product_id = product.id AND 
		product_location.product_id = product.id AND 
		product_location.store_id = "order".store_id
);

-- сотрудники, который в данный момент находятся на смене
CREATE OR REPLACE VIEW employee_shift AS (
	SELECT employee.id AS employee_id, employee."role", shift.begin_date, shift.end_date, shift.store_id
	FROM employee, shift
	WHERE shift.employee_id = employee.id AND shift.end_date > CURRENT_TIMESTAMP
);

-- jobs

-- раз в некоторое время списывать продукты, если истек срок годности (ассортимент тут же менять)
CREATE OR REPLACE FUNCTION check_and_mark_expired_shipments()
RETURNS void 
LANGUAGE 'plpgsql' AS
$$
DECLARE 
	shipment_r RECORD;
BEGIN
	FOR shipment_r IN
		(SELECT * 
		 FROM shipment 
		 WHERE shipment.expiration_date < CURRENT_TIMESTAMP AND shipment.status = 'accepted')
	LOOP
		UPDATE shipment
		SET status = 'expired'
		WHERE shipment.id = shipment_r.id;

		UPDATE assortment
		SET amount = amount - shipment_r.product_amount
		WHERE assortment.store_id = shipment_r.store_id AND assortment.product_id = shipment_r.product_id;
	END LOOP;
END;
$$;

-- если заказ assembled, то надо назначить доставщика (первого свободного) и сменить статус
CREATE OR REPLACE FUNCTION check_ready_to_delivery_orders_and_assign_couriers()
RETURNS void 
LANGUAGE 'plpgsql' AS
$$
DECLARE
	order_r RECORD;
	courier_id_r INT;
BEGIN
	FOR order_r IN
		(SELECT *
		 FROM "order"
		 WHERE "order"."status" = 'assembled')
	LOOP
		courier_id_r := (
			SELECT employee_shift.employee_id
			FROM employee_shift
			WHERE employee_shift."role" = 'courier' AND employee_shift.store_id = order_r.store_id
			LIMIT 1
		);
		UPDATE "order"
		SET "status" = 'delivering'
		WHERE "order".id = order_r.id;
		
		INSERT INTO delivery (order_id, courier_id, "status")
		VALUES (order_r.id, courier_id_r, 'scheduled');
	END LOOP;
END;
$$;

-- roles
CREATE ROLE dba;
GRANT ALL PRIVILEGES ON DATABASE postgres TO dba;

CREATE ROLE manager;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA  public TO manager;
GRANT ALL PRIVILEGES ON ALL FUNCTIONS IN SCHEMA public TO manager;

CREATE ROLE "user";
GRANT SELECT, UPDATE ON TABLE "order", client TO "user";
GRANT SELECT ON TABLE product, assortment, store, client_order, client_assortment TO "user";

CREATE ROLE courier;
GRANT UPDATE ON TABLE delivery TO courier;
GRANT SELECT ON TABLE courier_delivery TO courier;

CREATE ROLE assembler;
GRANT SELECT, UPDATE ON TABLE assembling, shipment TO assembler;
GRANT SELECT ON TABLE assembler_assembling TO assembler;

SET ROLE dba;
