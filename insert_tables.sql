INSERT INTO location (regional_group)
VALUES
    ('North America'),
    ('Europe'),
    ('Asia'),
    ('Africa'),
    ('Australia');

INSERT INTO department (name, location_id)
VALUES
    ('HR', 1),
    ('Finance', 2),
    ('Marketing', 3),
    ('IT', 1),
    ('Operations', 2);

INSERT INTO job (function)
VALUES
    ('Manager'),
    ('Supervisor'),
    ('Clerk'),
    ('Analyst'),
    ('Assistant');

INSERT INTO employee (last_name, first_name, middle_initial, manager_id, job_id, hire_date, salary, commission, department_id)
VALUES
    ('Smith', 'John', 'M', NULL, 1, '2020-01-15', 60000.00, 2000.00, 1),
    ('Johnson', 'Mary', 'S', 1, 2, '2019-05-20', 70000.00, 2500.00, 2),
    ('Williams', 'Robert', 'A', 1, 3, '2018-11-10', 55000.00, 1800.00, 1),
    ('Jones', 'Emily', 'L', 2, 4, '2021-03-05', 65000.00, 2200.00, 3),
    ('Brown', 'Michael', 'J', 2, 3, '2022-02-12', 60000.00, 2000.00, 2);

INSERT INTO customer (name, address, city, state, zip_code, area_code, phone_number, salesperson_id, credit_limit, comments)
VALUES
    ('ABC Company', '123 Main St', 'New York', 'NY', '10001', 212, 9998, 1, 10000.00, NULL),
    ('XYZ Corporation', '456 Elm St', 'Los Angeles', 'CA', '90001', 310, 1535, 2, 15000.00, NULL),
    ('Smith Enterprises', '789 Oak St', 'Chicago', 'IL', '60601', 312, 12555, 3, 12000.00, NULL),
    ('Johnson & Sons', '101 Pine St', 'Houston', 'TX', '77001', 713, 112, 4, 18000.00, NULL),
    ('Global Industries', '202 Maple St', 'Miami', 'FL', '33101', 305, 5555, 5, 20000.00, NULL);

INSERT INTO sales_order (order_date, customer_id, ship_date, total)
VALUES
    ('2023-01-10', 1, '2023-01-12', 500.00),
    ('2023-02-15', 2, '2023-02-18', 750.00),
    ('2023-03-20', 3, '2023-03-22', 600.00),
    ('2023-04-25', 4, '2023-04-28', 900.00),
    ('2023-05-30', 5, '2023-06-02', 1200.00);

INSERT INTO product (description)
VALUES
    ('Widget A'),
    ('Widget B'),
    ('Widget C'),
    ('Widget D'),
    ('Widget E');

INSERT INTO item (order_id, product_id, actual_price, quantity, total)
VALUES
    (1, 1, 100.00, 2, 200.00),
    (2, 2, 150.00, 3, 450.00),
    (3, 3, 120.00, 4, 480.00),
    (4, 1, 100.00, 3, 300.00),
    (5, 4, 200.00, 5, 1000.00);


INSERT INTO price (product_id, list_price, min_price, start_date, end_date)
VALUES
    (1, 120.00, 100.00, '2023-11-05', '2024-12-31'),
    (2, 180.00, 150.00, '2022-03-31', '2023-05-12'),
    (3, 150.00, 120.00, '2019-12-15', '2021-03-15'),
    (4, 250.00, 200.00, '2000-07-17', '2025-02-21'),
    (5, 300.00, 250.00, '2020-11-25', '2023-11-04');
