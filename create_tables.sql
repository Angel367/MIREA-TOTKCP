DROP TABLE IF EXISTS
    employee,
    department,
    location,
    job,
    customer,
    sales_order,
    item,
    product,
    price;

CREATE TABLE IF NOT EXISTS location
(
    location_id    SERIAL PRIMARY KEY,
    regional_group VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS job
(
    job_id   SERIAL PRIMARY KEY,
    function VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS product
(
    product_id  SERIAL PRIMARY KEY,
    description VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS department
(
    department_id SERIAL PRIMARY KEY,
    name          VARCHAR(14),
    location_id   INTEGER,
    CONSTRAINT fk_location_department FOREIGN KEY (location_id) REFERENCES location (location_id)
);

CREATE TABLE IF NOT EXISTS employee
(
    employee_id    SERIAL PRIMARY KEY,
    last_name      VARCHAR(15),
    first_name     VARCHAR(15),
    middle_initial VARCHAR(1),
    manager_id     INTEGER,
    job_id         INTEGER,
    hire_date      DATE,
    salary         NUMERIC(7, 2),
    commission     NUMERIC(7, 2),
    department_id  INTEGER,
    CONSTRAINT ref_employee FOREIGN KEY (manager_id) REFERENCES employee (employee_id),
    CONSTRAINT fk_job_employee FOREIGN KEY (job_id) REFERENCES job (job_id),
    CONSTRAINT fk_department_employee FOREIGN KEY (department_id) REFERENCES department (department_id)
);

CREATE TABLE IF NOT EXISTS price
(
    product_id SERIAL,
    list_price NUMERIC(8, 2),
    min_price  NUMERIC(8, 2),
    start_date DATE,
    end_date   DATE,
    PRIMARY KEY (product_id, start_date),
    CONSTRAINT fk_product_price FOREIGN KEY (product_id) REFERENCES product (product_id)
);

CREATE TABLE IF NOT EXISTS customer
(
    customer_id    SERIAL PRIMARY KEY,
    name           VARCHAR(45),
    address        VARCHAR(40),
    city           VARCHAR(30),
    state          VARCHAR(2),
    zip_code       VARCHAR(9),
    area_code      SMALLINT,
    phone_number   SMALLINT,
    salesperson_id INTEGER,
    credit_limit   NUMERIC(9, 2),
    comments       TEXT,
    CONSTRAINT fk_employee_customer FOREIGN KEY (salesperson_id) REFERENCES employee (employee_id)
);

CREATE TABLE IF NOT EXISTS sales_order
(
    order_id    SERIAL PRIMARY KEY,
    order_date  DATE,
    customer_id INTEGER,
    ship_date   DATE,
    total       NUMERIC(8, 2),
    CONSTRAINT fk_customer_sales_order FOREIGN KEY (customer_id) REFERENCES customer (customer_id)
);

CREATE TABLE IF NOT EXISTS item
(
    item_id      SERIAL,
    order_id     INTEGER,
    product_id   INTEGER,
    actual_price NUMERIC(8, 2),
    quantity     INTEGER,
    total        NUMERIC(8, 2),
    PRIMARY KEY (item_id, order_id),
    CONSTRAINT fk_product_item FOREIGN KEY (order_id) REFERENCES sales_order (order_id),
    CONSTRAINT fk_products_item FOREIGN KEY (product_id) REFERENCES product (product_id)
);
