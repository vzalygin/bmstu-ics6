-- enums
DROP TYPE IF EXISTS ORDER_STATUS_ENUM;
CREATE TYPE ORDER_STATUS_ENUM AS ENUM  (
	-- надо ли cancelled?
	'assembling', 'assembled', 'delivering', 'closed', 'cancelled'
);

DROP TYPE IF EXISTS DELIVERY_STATUS_ENUM;
CREATE TYPE DELIVERY_STATUS_ENUM AS ENUM (
	'sheduled', 'on_the_way', 'closed'
);

DROP TYPE IF EXISTS EMPLOYEE_ROLE_ENUM;
CREATE TYPE EMPLOYEE_ROLE_ENUM AS ENUM (
	'courier', 'assembler', 'manager'
);

DROP TYPE IF EXISTS PRODUCT_CATEGORY_ENUM;
CREATE TYPE PRODUCT_CATEGORY_ENUM AS ENUM (
	'todo'
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
	"status" ORDER_STATUS_ENUM NOT NULL,
	client_id INT NOT NULL,
	total_price INT NOT NULL CHECK (total_price >= 0),
	"address" VARCHAR(1024)[] NOT NULL,
	creation_date TIMESTAMP NOT NULL DEFAULT current_timestamp,
	delivery_date TIMESTAMP, -- TODO это тоже поправить
	close_date TIMESTAMP,
	store_id INT NOT NULL,

	PRIMARY KEY (id),

	CHECK (delivery_date = null or delivery_date >= creation_date),
	CHECK (close_date = null or delivery_date != null and close_date >= delivery_date)
);

CREATE TABLE IF NOT EXISTS delivery (
	id SERIAL,
	order_id INT NOT NULL, -- TODO поправить в картинке
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
	"description" TEXT NOT NULL,
	category PRODUCT_CATEGORY_ENUM NOT NULL,
	units VARCHAR(32) NOT NULL,
	"name" VARCHAR(256) NOT NULL,
	image_url VARCHAR(1024) NOT NULL,
	price_per_unit INT NOT NULL,

	PRIMARY KEY (id),

	CHECK (price_per_unit >= 0)
);

CREATE TABLE IF NOT EXISTS shipment (
	id SERIAL,
	store_id INT NOT NULL,
	delivery_date TIMESTAMP NOT NULL,
	product_id INT NOT NULL,
	expiration_date TIMESTAMP NOT NULL,
	product_amount INT NOT NULL,
	"status" SHIPMENT_STATUS_ENUM NOT NULL,

	PRIMARY KEY (id),

	CHECK (product_amount > 0)
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
	creation_date TIMESTAMP NOT NULL DEFAULT current_timestamp,
	close_date TIMESTAMP,
	
	PRIMARY KEY (product_id, order_id),
	
	CHECK (close_date = null or close_date > creation_date)
);

CREATE TABLE IF NOT EXISTS store (
	id SERIAL,
	"address" VARCHAR(1024) NOT NULL,
	"name" VARCHAR(256) NOT NULL,
	"owner" INT NOT NULL,

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

-- когда перевод заказа в status=assembled, когда все assembling имеют close_date
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
		SET "order.status" = 'assembled' 
		WHERE "order.id" = NEW.order_id;
	END IF;
	RETURN NEW;
END; 
$$
LANGUAGE 'plpgsql';
CREATE TRIGGER set_order_assembled_on_assembly_ready
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
		UPDATE assortment 
		SET assortment.amount = assortment.amount + NEW.product_amount
		WHERE assortment.store_id = NEW.store_id AND assortment.product_id = NEW.product_id;
	END IF;
	RETURN NEW;
END;
$$
LANGUAGE 'plpgsql';
CREATE TRIGGER update_assortment_on_shipment_accepted
	AFTER UPDATE
	ON shipment
	FOR EACH ROW
	EXECUTE PROCEDURE update_assortment_on_shipment_accepted_func();

-- когда создаются assembling, то убавлять из ассортимента количество товара
CREATE OR REPLACE FUNCTION decrease_product_amount_on_new_assembling_func()
RETURNS TRIGGER AS
$$
DECLARE
	store_id INT := (
		SELECT "order.store_id" FROM "order" WHERE "order.id" = NEW.order_id
	);
BEGIN
	IF
		OLD."status" != NEW."status" AND NEW."status" = 'accepted'
	THEN
		UPDATE assortment 
		SET assortment.amount = assortment.amount - NEW.product_amount
		WHERE assortment.store_id = store_id AND assortment.product_id = NEW.product_id;
	END IF;
	RETURN NEW;
END;
$$
LANGUAGE 'plpgsql';
CREATE TRIGGER decrease_product_amount_on_new_assembling
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
		NEW.product_amount = 0
	THEN
		UPDATE shipment
		SET shipment."status" = 'run_out'
		WHERE shipment.id = NEW.id;
	END IF;
	RETURN NEW;
END;
$$
LANGUAGE 'plpgsql';
CREATE TRIGGER set_shipment_run_out_on_zero_amount
	BEFORE UPDATE
	ON shipment
	FOR EACH ROW
	EXECUTE PROCEDURE set_shipment_run_out_on_zero_amount_func();

-- проставлять delivery_date и close_date в order при измении статуса
CREATE OR REPLACE FUNCTION set_order_timestamp_on_status_change_func()
RETURNS TRIGGER AS
$$
BEGIN
	IF 
		NEW."status" = 'delivering'
	THEN
		UPDATE "oder"
		SET "order".delivery_date = current_timestamp
		WHERE "order".id = NEW.id;
	END IF;
	IF 
		NEW."status" = 'closed' OR NEW."status" = 'cancelled'
	THEN
		UPDATE "oder"
		SET "order".close_date = current_timestamp
		WHERE "order".id = NEW.id;
	END IF;
	RETURN NEW;
END;
$$
LANGUAGE 'plpgsql';
CREATE TRIGGER set_order_timestamp_on_status_change
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
	remaining INT := NEW.product_amount;
	shipment_r RECORD;
BEGIN
	FOR shipment_r IN
		(SELECT * 
		 FROM shipment 
		 WHERE shipment.store_id = NEW.store_id AND shipment.product_id = NEW.product_id
		 ORDER BY expiration_date ASC)
	LOOP
		IF remaining > 0 THEN
			IF remaining > shipment_r.product_amount THEN
				UPDATE shipment
				SET shipment.product_amount = 0
				WHERE shipment.id = shipment_r.id;
				remaining := remaining - shipment_r.product_amount;
			ELSE
				UPDATE shipment
				SET shipment.product_amount = shipment.product_amount - remaining
				WHERE shipment.id = shipment_r.id;
				remaining := 0;
			END IF;
		END IF;
	END LOOP;
END;
$$
LANGUAGE 'plpgsql';
CREATE TRIGGER decrease_shipment_product_amount_on_assortment_decrease
	AFTER UPDATE
	ON assortment
	FOR EACH ROW
	EXECUTE PROCEDURE decrease_shipment_product_amount_on_assortment_decrease_func();

-- если заказ cancalled, то возвращать продукты в ассортмент
CREATE OR REPLACE FUNCTION return_products_to_assortment_on_order_cancel_func()
RETURNS TRIGGER AS
$$
BEGIN

	RETURN NEW;
END;
$$
LANGUAGE 'plpgsql';
CREATE TRIGGER return_products_to_assortment_on_order_cancel
	AFTER UPDATE
	ON "order"
	FOR EACH ROW
	EXECUTE PROCEDURE return_products_to_assortment_on_order_cancel_func();

-- views
-- вьюхи, из нужно сделать только часть информации доступной

-- user:
-- client (без изменений), order (ниже), assortment (без изменений), store (без адреса), product (без изменений)
-- информация о магазине
-- заказы (время заказа только, без остальной меты)

-- courier:
-- order (собирается из delivery order, с прилинкованным адресом)

-- assembler
-- assembling (сразу подвязывается номер заказа и место, где лежит продукт)

-- jobs
-- раз в некоторое время списывать продукты, если истек срок годности (ассортимент тут же менять)
-- если заказ assembled, то надо назначить доставщика (первого свободного) и сменить статус

-- roles
-- dba (имеет доступ ко всем)
-- manager (работает только с core-частью)
-- user
-- courier
-- assembler
