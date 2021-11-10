CREATE DATABASE retail_db;
CREATE USER retail_user WITH ENCRYPTED PASSWORD 'itversity';
GRANT ALL ON DATABASE retail_db TO retail_user;

\c retail_db

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    order_customer_id INT,
    order_status VARCHAR(30)
);

ALTER TABLE orders OWNER TO retail_user;

