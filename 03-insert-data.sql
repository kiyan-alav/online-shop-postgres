INSERT INTO users (name, email, country, created_at)
VALUES (
        'Ali',
        'ali@example.com',
        'Iran',
        '2023-01-01 10:00:00'
    ),
    (
        'Sara',
        'sara@test.com',
        'Iran',
        '2023-02-15 11:30:00'
    ),
    (
        'John',
        'john@usa.com',
        'USA',
        '2023-03-10 09:00:00'
    ),
    (
        'Emily',
        'emily@uk.com',
        'UK',
        '2023-05-20 14:00:00'
    ),
    (
        'Reza',
        'reza@ir.com',
        'Iran',
        '2023-06-01 16:00:00'
    );
INSERT INTO products (name, category, price, stock)
VALUES ('Laptop', 'Electronics', 1200.00, 10),
    ('Mouse', 'Electronics', 25.50, 50),
    ('Desk', 'Furniture', 150.00, 5),
    ('Chair', 'Furniture', 85.00, 15),
    ('Headphones', 'Electronics', 200.00, 0);
INSERT INTO orders (user_id, order_date, total_amount)
VALUES (1, '2023-07-01', 1225.50),
    (1, '2023-08-05', 25.50),
    (2, '2023-07-10', 150.00),
    (3, '2023-09-01', 1200.00);