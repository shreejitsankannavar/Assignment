CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10, 2)
);

INSERT INTO orders (order_id, customer_id, order_date, amount) VALUES
(1, 101, '2023-01-01', 250.00),
(2, 102, '2023-01-02', 150.00),
(3, 101, '2023-01-05', 100.00),
(4, 103, '2023-01-07', 300.00);
select * from orders;

select customer_id,sum(amount) as 'Total amount spent by each customer' from orders
group by customer_id;

select * from orders
where order_date>'2023-01-03';

select customer_id as 'customer(s) who made more than one order' from orders
group by customer_id
having count(customer_id)>1;
