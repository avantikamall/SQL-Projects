-- Create Database 
Create Database RetailStoreDB;
use RetailStoreDB;
--  Create Table 
Create Table Store_Sales
(
sale_id int Primary key Auto_increment,
Order_Date Date,
Customer_Name varchar(10),
Gender varchar(10),
Age int,
City varchar(40),
State varchar(40),
Product_Name varchar(60),
Category Varchar(40),
Quintity int,
Unit_Price Decimal(10,2),
Disscount Decimal(10,2),
Total_Amount Decimal(10,2),
Payment_Mode Varchar(20),
Salesperson Varchar(50)
);
--  Insert Sample Data (20 Records) 
Insert into Store_Sales
( Order_Date,Customer_Name,Gender,Age,City,State,Product_Name,Category,Quintity,Unit_Price,Disscount,Total_Amount,Payment_Mode,Salesperson)
Values
('2026-01-01','Rahul','Male',24,'Delhi','Delhi','Laptop','Electronics',1,55000,5000,50000,'Credit Card','Amit'),

('2026-01-02','Priya','Female',29,'Delhi','Delhi','Mobile','Electronics',2,18000,1000,35000,'UPI','Rohit'),

('2026-01-03','Ankit','Male',32,'Noida','UP','Chair','Furniture',4,2500,500,9500,'Cash','Neha'),

('2026-01-05','Sneha','Female',28,'Mumbai','Maharashtra','Sofa','Furniture',1,30000,2000,28000,'Debit Card','Amit'),

('2026-01-06','Rohan','Male',35,'Pune','Maharashtra','Television','Electronics',1,45000,3000,42000,'Credit Card','Neha'),

('2026-01-08','Meena','Female',41,'Jaipur','Rajasthan','Dining Table','Furniture',1,25000,1500,23500,'UPI','Rahul'),

('2026-01-10','Amit','Male',30,'Delhi','Delhi','Refrigerator','Electronics',1,42000,2000,40000,'Credit Card','Neha'),

('2026-01-12','Pooja','Female',27,'Lucknow','UP','Washing Machine','Electronics',1,28000,1000,27000,'Cash','Rohit'),

('2026-01-14','Karan','Male',26,'Chandigarh','Punjab','Office Chair','Furniture',2,4500,500,8500,'UPI','Rahul'),

('2026-01-15','Komal','Female',31,'Delhi','Delhi','Microwave','Electronics',1,15000,500,14500,'Debit Card','Amit'),

('2026-01-18','Sahil','Male',36,'Jaipur','Rajasthan','Bed','Furniture',1,38000,3000,35000,'Cash','Neha'),

('2026-01-19','Ritika','Female',25,'Noida','UP','Laptop','Electronics',1,60000,4000,56000,'Credit Card','Rahul'),

('2026-01-21','Deepak','Male',38,'Mumbai','Maharashtra','Air Conditioner','Electronics',1,52000,3000,49000,'UPI','Amit'),

('2026-01-22','Anjali','Female',34,'Pune','Maharashtra','Wardrobe','Furniture',1,32000,2000,30000,'Cash','Neha'),

('2026-01-23','Manoj','Male',42,'Delhi','Delhi','Mobile','Electronics',3,16000,2000,46000,'UPI','Rohit'),

('2026-01-25','Neha','Female',29,'Lucknow','UP','Study Table','Furniture',2,7000,1000,13000,'Debit Card','Rahul'),

('2026-01-26','Tarun','Male',40,'Delhi','Delhi','Television','Electronics',1,47000,2000,45000,'Cash','Amit'),

('2026-01-27','Shweta','Female',33,'Mumbai','Maharashtra','Sofa','Furniture',1,35000,3000,32000,'Credit Card','Neha'),

('2026-01-29','Mohit','Male',37,'Jaipur','Rajasthan','Laptop','Electronics',1,62000,5000,57000,'UPI','Rahul'),

('2026-01-30','Nisha','Female',26,'Delhi','Delhi','Mixer Grinder','Home Appliance',2,4500,500,8500,'Cash','Rohit');
--  Display all records.
show tables ;
desc Store_Sales;
Select * from Store_Sales;
--  Show customer name, city and product purchased.
Select Customer_Name,City,Product_Name from Store_Sales;
--   Find all customers from Delhi. 
Select * from Store_Sales where City="Delhi";
--  Display all Electronics products. 
select * from Store_Sales where Category="Electronics";
--  Find sales greater than ₹30,000.
-- This query calculates "Sales" on-the-fly by multiplying Quantity by Unit_Price.
-- We use a WHERE clause to directly filter rows whose sales are greater than or equal to 30,000.
Select Quintity*Unit_Price as "Sales" from Store_Sales where Quintity*Unit_Price>=30000;

-- Note: We calculate the "Sales" column temporarily and do not store it permanently in the table. This keeps our table structure clean, and the calculation is only done when we need it.

-- Another approach is to use the HAVING clause.
-- HAVING allows us to filter based on the alias "Sales" because it is applied after the SELECT statement.

Select Quintity*Unit_Price as "Sales" from Store_Sales having Sales>=30000;

-- Show customers aged above 30 years. 
Select * from Store_Sales where age>=30;
-- Sort records by highest sale amount. 
Select *,(Quintity*Unit_Price) as "Sales" from Store_Sales order by Sales DESC;
-- Display the first 5 records. 
Select * from Store_Sales
Limit 5;
 -- Find customers whose names start with 'R'. 
Select * from Store_Sales
where Customer_Name like "R%";
--  Display all unique cities. 
Select distinct City from Store_Sales;
--  Calculate total sales revenue.
Select sum(Quintity*Unit_Price) as "Sales" from Store_Sales;
-- Calculate average sales amount. 
Select avg(Quintity*Unit_Price) as "Sales" from Store_Sales;
--  Find the maximum sale amount.
Select Max(Quintity*Unit_Price) as "Sales" from Store_Sales;
 -- Find the minimum sale amount.
Select Min(Quintity*Unit_Price) as "Sales" from Store_Sales;
 -- Count total orders. 
Select count(*) as "Total_Order" from Store_Sales;
 -- Display city-wise total sales.
Select City,sum(Quintity*Unit_Price) as "city-wise total sales" from Store_Sales group by City;
--  Display category-wise revenue.
Select Category,sum(Total_Amount) as "category-wise revenue" from Store_Sales group by Category;
 -- Display salesperson-wise revenue. 
Select Salesperson,sum(Total_Amount) as "salesperson-wise revenue" from Store_Sales group by Salesperson;
--  Count orders by payment mode
Select Payment_Mode,count(Payment_Mode) from Store_Sales group by Payment_Mode;
--  Find customers who have placed more than one order. 
Select Customer_Name, count(*) from Store_Sales group by Customer_Name HAVING COUNT(*) > 1;
 -- Find the city with the highest sales. 
Select max(City), Max(Quintity*Unit_Price) as "Sales" from Store_Sales;
-- Find the category generating the highest revenue. 
Select Category,Sum(Total_Amount) as "category-wise revenue" from Store_Sales group by Category order by 
"category-wise revenue" desc limit 1;
--  Display monthly sales revenue. 
SELECT MONTHNAME(Order_Date) AS Monthly,
       SUM(Quintity * Unit_Price) AS Sales,
       MONTH(Order_Date) AS MonthNumber
FROM Store_Sales
GROUP BY MonthNumber, Monthly
ORDER BY MonthNumber;
--  Find the top 5 highest sales transactions. 
Select Total_Amount as " Highest Sales Transactions" from Store_Sales  order by 
Total_Amount desc limit 5;
-- 	 Display product-wise quantity sold. 
Select Product_Name ,Sum(Quintity) as "product-wise quantity" from Store_Sales group by Product_Name;
-- Calculate average sales by city.
Select City, SUM(Quintity * Unit_Price) AS Sales from Store_Sales group by City  order by Sales DESC ;
--  Show gross amount before discount for every order. 
Select Product_Name ,Sum(Unit_Price) as "Gross_Amount" from Store_Sales group by Product_Name order by Gross_Amount DESC;
--  List customers who paid using UPI.
Select Customer_Name ,Payment_Mode from Store_Sales where Payment_Mode = "UPI";
-- Find the most popular payment mode. 
select Payment_Mode , Count(Payment_Mode) as " popular payment mode" from Store_Sales 
group by Payment_Mode ORDER BY COUNT(Payment_Mode) DESC limit 1;
 -- Display all Furniture products costing more than ₹20,000. 
 Select Product_Name,Category, Unit_Price from Store_Sales where Category = "Furniture" and Unit_Price>20000;
 --  Find customers between ages 25 and 35. 
 select Customer_Name from Store_Sales where age>=25 and age<=35;
 -- Count male and female customers. 
 select gender,count(gender) from Store_Sales group by gender;
 --  Display state-wise revenue. 
 Select State, Sum(Quintity*Total_Amount) as Revenue from Store_Sales group by State;
 --  Find the salesperson with the maximum revenue. 
 Select Salesperson, Sum(Quintity*Total_Amount) as Revenue from Store_Sales group by Salesperson order by Revenue desc limit 1;
 /*35. Create a business KPI report showing: 
●  Total Orders 
●  Total Revenue 
●  Average Order Value 
●  Highest Sale 
●  Lowest Sale */
Select count(*) as Total_Orders,
Sum(Total_Amount) as Revenue,
Avg(Total_Amount) as Order_Value,
max(Total_Amount) as Highest_Sale,
min(Total_Amount) as Lowest_Sale from Store_Sales ;





