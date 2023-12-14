create database sale;
use sale;

CREATE TABLE sales_data (
order_date DATE,
product_name VARCHAR(255),
quantity_sold INT,
sales_amount DECIMAL(10, 2)
);

INSERT INTO sales_data (order_date, product_name, quantity_sold, sales_amount)
VALUES
('2023-01-01', 'LP Dell', 10, 100.00),
('2023-01-02', 'LP Acer', 5, 50.00),
('2023-01-03', 'LP Asus', 8, 120.00),
('2023-01-04', 'LP Asus', 12, 180.00),
('2023-01-05', 'LP HP', 15, 150.00);

-- The LAG() function is used to get value from row that precedes the current row. 
-- The LEAD() function is used to get value from row that succeeds the current row.

select * from sales_data;

select order_date, product_name, quantity_sold, sales_amount, 
LEAD(order_date) OVER (partition by product_name order by order_date) as next_order_date,
LAG (order_date) OVER (partition by product_name order by order_date) as prev_order_date
FROM sales_data;

select
	order_date,
	product_name,
    quantity_sold,
    sales_amount,
	CASE
		when quantity_sold >= 10 then 'High'
        when quantity_sold >= 5 then 'Medium'
        ELSE 'Low'
	END AS sales_category
FROM
	sales_data;
    
