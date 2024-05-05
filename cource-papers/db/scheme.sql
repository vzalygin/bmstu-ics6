-- enums
DROP TYPE IF EXISTS ORDER_STATUS_ENUM;
CREATE TYPE ORDER_STATUS_ENUM AS ENUM  (
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
	'on_the_way', 'delivered', 'accepted', 'run_out'
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
	id SERIAL PRIMARY KEY,
	"status" ORDER_STATUS_ENUM NOT NULL,
	client_id INT NOT NULL,
	total_price INT NOT NULL CHECK (total_price >= 0),
	"address" VARCHAR(1024)[] NOT NULL,
	creation_date TIMESTAMP NOT NULL,
	delivery_date TIMESTAMP, -- TODO это тоже поправить
	close_date TIMESTAMP
);

CREATE TABLE IF NOT EXISTS delivery (
	id SERIAL PRIMARY KEY,
	order_id INT NOT NULL, -- TODO поправить в картинке
	courier_id INT NOT NULL,
	"status" DELIVERY_STATUS_ENUM
);

CREATE TABLE IF NOT EXISTS employee (
	id SERIAL PRIMARY KEY,
	"name" VARCHAR(256) NOT NULL,
	lastname VARCHAR(256) NOT NULL,
	"role" EMPLOYEE_ROLE_ENUM NOT NULL
);

CREATE TABLE IF NOT EXISTS product (
	id SERIAL PRIMARY KEY,
	"description" TEXT NOT NULL,
	category PRODUCT_CATEGORY_ENUM NOT NULL,
	units VARCHAR(32) NOT NULL,
	"name" VARCHAR(256) NOT NULL,
	image_url VARCHAR(1024) NOT NULL,
	price_per_unit INT NOT NULL CHECK (price_per_unit >= 0)
);

CREATE TABLE IF NOT EXISTS shipment (
	id SERIAL PRIMARY KEY,
	store_id INT NOT NULL,
	delivery_date TIMESTAMP NOT NULL,
	product_id INT NOT NULL,
	expiration_date TIMESTAMP NOT NULL,
	product_amount INT NOT NULL CHECK (product_amount > 0),
	"status" SHIPMENT_STATUS_ENUM NOT NULL
);

CREATE TABLE IF NOT EXISTS store (
	id SERIAL PRIMARY KEY,
	"address" VARCHAR(1024) NOT NULL,
	"name" VARCHAR(256) NOT NULL,
	"owner" INT NOT NULL    
);

CREATE TABLE IF NOT EXISTS assembling (
	product_id INT NOT NULL,
	order_id INT NOT NULL,
	product_amount INT NOT NULL CHECK (product_amount > 0),
	creation_date TIMESTAMP NOT NULL,
	close_date TIMESTAMP CHECK ((close_date = null) or (close_date != null and close_date > creation_date)),
	PRIMARY KEY (product_id, order_id)
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
	end_date TIMESTAMP NOT NULL CHECK (end_date > begin_date),
	PRIMARY KEY (employee_id, store_id)
);

CREATE TABLE IF NOT EXISTS assortment (
	store_id INT NOT NULL,
	product_id INT NOT NULL,
	amount INT NOT NULL CHECK (amount >= 0),
	PRIMARY KEY (store_id, product_id)
);

-- references
ALTER TABLE "order" ADD CONSTRAINT fk_order_client FOREIGN KEY (client_id) REFERENCES client;

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

-- complex contraints
-- delivery_date не раньше creation_date
-- close_date не раньше delivery_date
-- close_date != null, если (delivery_date != null and status=closed) или status=cancelled
-- delivery_date != null, если status!=assembling
-- заказ нельзя перевести в status=delivering, пока все assembling не имеют close_date!=null

-- triggers
-- когда перевод заказа в status=assembled, когда все assembling имеют close_date
-- когда shipment имеют статус accepted, то добавлять продукт в assortment
-- если заказ cancalled, то возвращать продукты в ассортмент
-- нельзя поставить пересекающиеся смены?
-- при создании assembling количество товаров в ассортименте убавляется согласно assembling
-- при убавлении товаров в assortment убавляется количество товаров из поставок:
--		берется самая ранняя принятая доставка и из нее вычитается заказанное количество продуктов
--		если продуктов больше, то доставка помечается run_out и ищется следующая

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
