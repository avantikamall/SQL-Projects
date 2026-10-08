-- -- Project: SmartMart Order Analysis
create database RetailAnalyticsDB;
use RetailAnalyticsDB;
CREATE TABLE items 
( 
item_id INT PRIMARY KEY AUTO_INCREMENT, 
item_name VARCHAR(100), 
category VARCHAR(50), 
brand VARCHAR(50), 
purchase_price DECIMAL(10,2), 
selling_price DECIMAL(10,2), 
stock_quantity INT, 
supplier_name VARCHAR(100) 
);
INSERT INTO items 
(item_name,category,brand,purchase_price,selling_price,stock_quantity,supplier_name) 
VALUES 
('Laptop','Electronics','HP',45000,52000,40,'ABC Traders'), 
('Mobile','Electronics','Samsung',18000,22000,80,'XYZ Electronics'), 
('Refrigerator','Electronics','LG',28000,34000,25,'Cool Appliances'), 
('Office Chair','Furniture','Nilkamal',2200,3500,100,'Furniture World'), 
('Dining Table','Furniture','Godrej',12000,17000,30,'Furniture World'), 
('Rice 10kg','Grocery','India Gate',700,900,250,'Fresh Foods'), 
('Cooking Oil','Grocery','Fortune',120,170,300,'Fresh Foods'), 
('T-Shirt','Clothing','Levis',500,900,150,'Fashion Hub');
CREATE TABLE orders 
( 
order_id INT PRIMARY KEY AUTO_INCREMENT, 
order_date DATE, 
customer_name VARCHAR(100), 
city VARCHAR(50), 
payment_mode VARCHAR(30), 
quantity INT, 
item_id INT, 
FOREIGN KEY(item_id) 
REFERENCES items(item_id) 
);
INSERT INTO orders 
(order_date,customer_name,city,payment_mode,quantity,item_id) 
VALUES 
('2026-01-02','Rahul','Delhi','UPI',2,2), 
('2026-01-03','Priya','Noida','Cash',1,1), 
('2026-01-05','Amit','Delhi','Card',3,6), 
('2026-01-07','Neha','Mumbai','UPI',1,3), 
('2026-01-09','Rohit','Pune','Card',2,4), 
('2026-01-10','Pooja','Delhi','Cash',5,7), 
('2026-01-12','Ankit','Jaipur','UPI',2,8), 
('2026-01-14','Komal','Delhi','Card',1,5), 
('2026-01-16','Mohit','Noida','UPI',2,2), 
('2026-01-18','Nisha','Lucknow','Cash',1,1);
-- Real Business SQL Assignment 
-- Basic Level 
-- 1.  Display all items.
Select * from items;
-- 2.  Display all orders. 
Select * from orders;
-- 3.  Show Electronics products.
Select item_name, Category from items where category="Electronics";
-- 4.  Display orders from Delhi. 
Select * from orders where city="Delhi";
-- 5.  Show products with stock greater than 100.
Select item_name,brand,Supplier_name,stock_quantity from items where stock_quantity>100;
-- 6.  Display orders paid using UPI.
Select * from orders where payment_mode="UPI";
-- 7.  Display products costing more than ₹20,000. 
Select Item_name, brand,purchase_price from items where purchase_price>20000;
-- 8.  Display unique cities. 
select distinct City as Unique_Cities from orders ;
-- 9.  Sort items by selling price.
select * from items order by selling_price desc;
-- 10. Display top 5 expensive products.
select * from items order by selling_price desc limit 5;
-- INNER JOIN Questions 
-- 11. Display customer name, item name and quantity. 
Select customer_name,item_name,quantity from items, orders
where items.item_id=orders.item_id;
--  12. Display category and customer name. 
select customer_name, category from items, orders
where items.item_id=orders.item_id;
-- 13. Display brand and quantity sold.
Select brand,quantity from items, orders
where items.item_id=orders.item_id;
-- 14. Display selling price with customer.
Select Customer_name,Selling_price from items, orders
where items.item_id=orders.item_id;
-- 15. Display supplier name with customer.
Select Customer_name,Supplier_name from items, orders
where items.item_id=orders.item_id;
-- GROUP BY Questions 
-- 16. Product-wise quantity sold.
Select item_name, SUM(quantity) as Total_Quantity
from items, orders
where items.item_id = orders.item_id
group by item_name;
-- 17. Category-wise sales quantity.
Select Category ,SUM(quantity) as Total_Quantity
from items, orders
where items.item_id = orders.item_id
group by Category;
-- 18. Brand-wise quantity sold.
Select Brand ,SUM(quantity) as Total_Quantity
from items, orders
where items.item_id = orders.item_id
group by Brand;
-- 19. Supplier-wise sales. 
Select Supplier_name ,SUM(quantity) as Total_Quantity
from items, orders
where items.item_id = orders.item_id
group by Supplier_name;
-- 20. City-wise orders. 
Select City ,count(*) as Total_Quantity
from items, orders
where items.item_id = orders.item_id
group by City;
-- 21. Payment mode analysis. 
Select payment_mode ,count(*) as Total_Quantity
from items, orders
where items.item_id = orders.item_id
group by payment_mode;
-- 22. Number of orders per product. 
Select item_name ,count(*) as Total_Orders
from items, orders
where items.item_id = orders.item_id
group by item_name;
-- 23. Category-wise products. 
Select item_name ,count(*) as Total_Orders
from items, orders
where items.item_id = orders.item_id
group by item_name;
-- 24. Brand-wise products. 
Select Brand,count(*) as Total_Orders
from items
group by Brand;
-- 25. Supplier-wise products.
Select supplier_name,count(*) as Total_Products
from items
group by supplier_name;
-- Aggregate Questions 
-- 26. Most sold product.
Select item_name,sum(quantity) as Most_Sold_Product from items,orders
where items.item_id = orders.item_id
group by item_name order by Most_Sold_Product desc limit 1;
-- 27. Least sold product. 
Select item_name,sum(quantity) as Least_Sold_Product from items,orders
where items.item_id = orders.item_id
group by item_name order by Least_Sold_Product Asc limit 1;
-- 28. Highest selling price product.
Select item_name, selling_price as High_Selling_Price_Product from items
 order by High_Selling_Price_Product desc limit 1;
 -- 29. Lowest selling price product. 
 Select item_name, selling_price as Lowest_Selling_Price_Product from items
 order by Lowest_Selling_Price_Product Asc limit 1;
-- 30. Average selling price
 Select avg(selling_price) as Average_Selling_Price from items;
-- 31. Total stock available.
Select sum(stock_quantity) as Total_stock from items;
-- 32. Total quantity sold.
Select sum(quantity) as Total_quantity from orders;
-- 33. Total number of products. 
Select count(item_id) as Total_Products from items;
-- 34. Total number of orders.
Select count(*) as Total_Order from orders;
-- 35. Average order quantity.
Select avg(quantity) as Avg_Qty from orders;
-- Business Analytics Questions 
-- 36. Which category is most popular? 
Select category,sum(quantity) as Total_quantity FROM items, orders where items.item_id = orders.item_id 
group by category order by Total_quantity desc limit 1;
-- 37. Which city places the most orders? 
Select City,count(*) as Total_Order FROM items, orders where items.item_id = orders.item_id 
group by City order by Total_Order desc limit 1;
-- 38. Which supplier's products sell the most? 
Select supplier_name,sum(quantity) as Total_quantity FROM items, orders where items.item_id = orders.item_id 
group by supplier_name order by Total_quantity desc limit 1;
-- 39. Which payment mode is most used? 
Select Payment_mode,sum(quantity) as Total_quantity FROM items, orders where items.item_id = orders.item_id 
group by Payment_mode order by Total_quantity desc limit 1;
-- -- 39. Which payment mode is most used? 
Select Payment_mode,count(*) as Total_Order FROM items, orders where items.item_id = orders.item_id 
group by Payment_mode order by Total_Order desc limit 1;
-- 40. Which product has never been ordered? 
select i.item_id, i.item_name 
from items i left join orders o
on i.item_id = o.item_id 
where o.item_id is null;
-- 41. Which products have low stock (less than 20)?
Select * from items where stock_quantity<20;
-- 42. Customers Who Bought Electronics 
Select distinct customer_name from orders inner join items on 
orders.item_id=items.item_id where items.category="Electronics";
-- 43. Customers Who Bought Furniture
Select distinct customer_name from orders inner join items on 
orders.item_id=items.item_id where items.category="Furniture";
-- 44. Brand Generating Highest Sales Quantity
Select brand, sum(quantity) as  Quantity_Sold from orders inner join items on 
orders.item_id=items.item_id group by brand order by Quantity_Sold desc Limit 1;
-- 45. Product Having Highest Stock
Select *  from items order by  stock_quantity Desc limit 1;
-- 46. Product Having Lowest Stock 
Select *  from items order by  stock_quantity asc limit 1;
-- 47. Which City Purchased the Highest Quantity?
Select city, sum(quantity) as Total_Quantity from orders 
group by city order by  Total_Quantity desc limit 1;
-- 48. Supplier Having Maximum Products
Select supplier_name, count(*) as Total_Products from items 
group by supplier_name order by Total_Products desc limit 1;
-- 49. Which Product Category Should Be Restocked First? 
select category, sum(stock_quantity) as Available_Stock from items 
group by category order by Available_Stock limit 1; 
-- 50. Business KPI Dashboard
select count(distinct item_id) as Total_Products, 
(select count(*) from orders) as Total_Orders, 
(select sum(quantity) from orders) as Total_Quantity_Sold, 
sum(stock_quantity) as Total_Stock, 
round(avg(selling_price),2) as Average_Selling_Price from items;
