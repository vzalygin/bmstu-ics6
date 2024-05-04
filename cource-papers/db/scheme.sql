-- enums
DROP TYPE IF EXISTS ORDER_STATUS_ENUM;
CREATE ORDER_STATUS_ENUM AS ENUM (
    'assembling', 'delivering', 'closed'
);

DROP TYPE IF EXISTS DELIVERY_STATUS_ENUM;
CREATE ORDER_STATUS_ENUM AS ENUM (
    'sheduled', 'on_the_way', 'closed'
);

DROP TYPE IF EXISTS DELIVERY_STATUS_ENUM;
CREATE DELIVERY_STATUS_ENUM AS ENUM (
    'courier', 'assembler', 'manager'
);

DROP TYPE IF EXISTS PRODUCT_CATEGORY_ENUM;
CREATE PRODUCT_CATEGORY_ENUM AS ENUM (
    'todo'
);

DROP TYPE IF EXISTS SHIPMENT_STATUS_ENUM;
CREATE SHIPMENT_STATUS_ENUM AS ENUM (
    "on_the_way", "delivered", "accepted"
);

-- tables
CREATE TABLE IF NOT EXISTS client (
    id SERIAL PRIMARY KEY,
    "name" NVARCHAR(256) NOT NULL,
    lastname NVARCHAR(256) NOT NULL,
    saved addresses NVARCHAR(1024)[] NOT NULL,
    phone_number NVARCHAR(256) NOT NULL,
    email NVARCHAR(256) NOT NULL
);

CREATE TABLE IF NOT EXISTS order (
    id SERIAL PRIMARY KEY,
    "status" ORDER_STATUS_ENUM NOT NULL,
    client_id INT NOT NULL,
    total_price INT NOT NULL,
    "address" NVARCHAR(1024)[] NOT NULL,
    creation_date TIMESTAMP NOT NULL,
    delivery_id INT,
    close_date TIMESTAMP
);

CREATE TABLE IF NOT EXISTS delivery_order (
    id SERIAL PRIMARY KEY,
    courier_id INT NOT NULL,
    creation_date TIMESTAMP NOT NULL,
    "status" DELIVERY_STATUS_ENUM
);

CREATE TABLE IF NOT EXISTS employee (
    id SERIAL PRIMARY KEY,
    store_id INT NOT NULL,
    "name" NVARCHAR(256) NOT NULL,
    lastname NVARCHAR(256) NOT NULL,
    "role" EMPLOYEE_ROLE_ENUM NO NULL,
);

CREATE TABLE IF NOT EXISTS product (
    id SERIAL PRIMARY KEY,
    "description" TEXT NOT NULL,
    category PRODUCT_CATEGORY_ENUM NOT NULL,
    units NVARCHAR(32) NOT NULL,
    "name" NVARCHAR(256) NOT NULL,
    image_url VARCHAR(1024) NOT NULL,
    price_per_unit INT NOT NULL
);

CREATE TABLE IF NOT EXISTS shipment (
    id SERIAL PRIMARY KEY,
    store_id INT NOT NULL,
    delivery_date TIMESTAMP NOT NULL,
    product_id INT NOT NULL,
    expiration_date TIMESTAMP NOT NULL,
    product_amount INT NOT NULL,
    "status" SHIPMENT_STATUS_ENUM NOT NULL
);

CREATE TABLE IF NOT EXISTS store (
    id SERIAL PRIMARY KEY,
    "address" NVARCHAR(1024) NOT NULL,
    "name" NVARCHAR(256) NOT NULL,
    "owner" INT NOT NULL    
);

CREATE TABLE IF NOT EXISTS assembling (
    product_id INT NOT NULL,
    order_id INT NOT NULL,
    assembler_id INT NOT NULL,
    product_amount INT NOT NULL,
    creation_date TIMESTAMP NOT NULL,
    close_date TIMESTAMP,
    PRIMARY KEY (product_id, order_id)
);

CREATE TABLE IF NOT EXISTS product_location (
    product_id INT NOT NULL,
    store_id INT NOT NULL,
    "description" NVARCHAR(256) NOT NULL,
    PRIMARY KEY (product_id, store_id)
);

CREATE TABLE IF NOT EXISTS shift (
    employee_id INT NOT NULL,
    store_id INT NOT NULL,
    begin_date TIMESTAMP NOT NULL,
    end_date TIMESTAMP NOT NULL,
    PRIMARY KEY (employee_id, store_id)
);

CREATE TABLE IF NOT EXISTS assortment (
    store_id INT NOT NULL,
    product_id INT NOT NULL,
    amount INT NOT NULL,
    PRIMARY KEY (store_id, product_id)
);

--references
ALTER TABLE order
    ADD CONSTRAINT fk_order_client
    FOREIGN KEY(client_id)
    REFERENCES client;
