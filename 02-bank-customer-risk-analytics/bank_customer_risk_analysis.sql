create database Bank_Customer_Transaction;
use Bank_Customer_Transaction;
CREATE TABLE bank_transactions 
( 
transaction_id INT PRIMARY KEY AUTO_INCREMENT, 
transaction_date DATE, 
customer_id INT, 
customer_name VARCHAR(50), 
gender VARCHAR(10), 
age INT, 
city VARCHAR(40), 
state VARCHAR(40), 
branch_name VARCHAR(50), 
account_number VARCHAR(20), 
account_type VARCHAR(20), 
customer_segment VARCHAR(20), 
transaction_type VARCHAR(20), 
payment_channel VARCHAR(30), 
transaction_amount DECIMAL(12,2), 
balance_after_transaction DECIMAL(12,2), 
loan_status VARCHAR(20), 
credit_score INT, 
occupation VARCHAR(40) 
);
INSERT INTO bank_transactions
(transaction_date, customer_id, customer_name, gender, age, city, state,
branch_name, account_number, account_type, customer_segment,
transaction_type, payment_channel, transaction_amount,
balance_after_transaction, loan_status, credit_score, occupation)
VALUES

('2026-01-02',101,'Rahul','Male',28,'Delhi','Delhi','Delhi Main','ACC1001','Savings','Premium','Deposit','UPI',75000,325000,'No Loan',742,'Software Engineer'),
('2026-01-03',102,'Priya','Female',32,'Mumbai','Maharashtra','Mumbai Central','ACC1002','Savings','Premium','Deposit','Net Banking',125000,480000,'Active',765,'Doctor'),
('2026-01-04',103,'Amit','Male',45,'Delhi','Delhi','Delhi Main','ACC1003','Current','Business','Deposit','Cheque',250000,725000,'Active',710,'Business Owner'),
('2026-01-05',104,'Neha','Female',29,'Pune','Maharashtra','Pune Camp','ACC1004','Savings','Regular','Withdrawal','ATM',15000,185000,'No Loan',690,'Teacher'),
('2026-01-06',105,'Rohit','Male',61,'Jaipur','Rajasthan','Jaipur Main','ACC1005','Savings','Senior Citizen','Deposit','Cheque',90000,390000,'No Loan',735,'Retired'),
('2026-01-07',106,'Pooja','Female',24,'Delhi','Delhi','Delhi Main','ACC1006','Savings','Young','Withdrawal','UPI',8000,92000,'No Loan',680,'Student'),
('2026-01-09',107,'Ankit','Male',38,'Noida','UP','Noida Sector 18','ACC1007','Current','Business','Deposit','Net Banking',350000,950000,'Active',725,'Business Owner'),
('2026-01-10',108,'Sneha','Female',35,'Mumbai','Maharashtra','Mumbai Central','ACC1008','Savings','Premium','Withdrawal','UPI',22000,278000,'Active',755,'Manager'),
('2026-01-11',109,'Vikas','Male',52,'Lucknow','UP','Lucknow Main','ACC1009','Savings','Regular','Deposit','Cash',45000,210000,'No Loan',640,'Trader'),
('2026-01-12',110,'Karan','Male',27,'Pune','Maharashtra','Pune Camp','ACC1010','Savings','Young','Withdrawal','ATM',12000,78000,'No Loan',655,'Analyst'),

('2026-01-14',101,'Rahul','Male',28,'Delhi','Delhi','Delhi Main','ACC1001','Savings','Premium','UPI Payment','UPI',18000,307000,'No Loan',742,'Software Engineer'),
('2026-01-15',102,'Priya','Female',32,'Mumbai','Maharashtra','Mumbai Central','ACC1002','Savings','Premium','Deposit','Net Banking',200000,680000,'Active',765,'Doctor'),
('2026-01-16',103,'Amit','Male',45,'Delhi','Delhi','Delhi Main','ACC1003','Current','Business','Withdrawal','Cheque',85000,640000,'Active',710,'Business Owner'),
('2026-01-17',104,'Neha','Female',29,'Pune','Maharashtra','Pune Camp','ACC1004','Savings','Regular','UPI Payment','UPI',9500,175500,'No Loan',690,'Teacher'),
('2026-01-18',105,'Rohit','Male',61,'Jaipur','Rajasthan','Jaipur Main','ACC1005','Savings','Senior Citizen','Withdrawal','ATM',20000,370000,'No Loan',735,'Retired'),
('2026-01-19',106,'Pooja','Female',24,'Delhi','Delhi','Delhi Main','ACC1006','Savings','Young','UPI Payment','UPI',5000,87000,'No Loan',680,'Student'),
('2026-01-20',107,'Ankit','Male',38,'Noida','UP','Noida Sector 18','ACC1007','Current','Business','Withdrawal','Net Banking',125000,825000,'Active',725,'Business Owner'),
('2026-01-21',108,'Sneha','Female',35,'Mumbai','Maharashtra','Mumbai Central','ACC1008','Savings','Premium','Deposit','UPI',60000,338000,'Active',755,'Manager'),
('2026-01-23',109,'Vikas','Male',52,'Lucknow','UP','Lucknow Main','ACC1009','Savings','Regular','Withdrawal','Cash',18000,192000,'No Loan',640,'Trader'),
('2026-01-24',110,'Karan','Male',27,'Pune','Maharashtra','Pune Camp','ACC1010','Savings','Young','UPI Payment','UPI',7000,71000,'No Loan',655,'Analyst'),

('2026-02-02',111,'Meena','Female',67,'Jaipur','Rajasthan','Jaipur Main','ACC1011','Savings','Senior Citizen','Deposit','Cheque',300000,820000,'Active',720,'Retired'),
('2026-02-03',112,'Sahil','Male',41,'Delhi','Delhi','Delhi Main','ACC1012','Current','Business','Deposit','Cash',220000,510000,'Active',605,'Business Owner'),
('2026-02-04',113,'Riya','Female',26,'Mumbai','Maharashtra','Mumbai Central','ACC1013','Savings','Young','UPI Payment','UPI',12000,65000,'No Loan',590,'Designer'),
('2026-02-05',114,'Deepak','Male',55,'Pune','Maharashtra','Pune Camp','ACC1014','Savings','Regular','Withdrawal','ATM',25000,155000,'Default',575,'Sales Manager'),
('2026-02-06',115,'Anjali','Female',31,'Delhi','Delhi','Delhi Main','ACC1015','Savings','Premium','Deposit','Net Banking',175000,455000,'Active',780,'Consultant'),
('2026-02-07',116,'Manoj','Male',48,'Noida','UP','Noida Sector 18','ACC1016','Current','Business','Withdrawal','Cheque',275000,690000,'Active',690,'Manufacturer'),
('2026-02-08',117,'Komal','Female',22,'Lucknow','UP','Lucknow Main','ACC1017','Savings','Young','UPI Payment','UPI',6500,43500,'No Loan',610,'Student'),
('2026-02-10',118,'Tarun','Male',63,'Mumbai','Maharashtra','Mumbai Central','ACC1018','Savings','Senior Citizen','Deposit','ATM',80000,310000,'No Loan',705,'Retired'),
('2026-02-11',119,'Nisha','Female',37,'Jaipur','Rajasthan','Jaipur Main','ACC1019','Savings','Regular','Withdrawal','ATM',30000,120000,'Active',625,'Accountant'),
('2026-02-12',120,'Mohit','Male',34,'Delhi','Delhi','Delhi Main','ACC1020','Savings','Premium','UPI Payment','UPI',15000,285000,'Active',750,'Engineer'),

('2026-02-14',111,'Meena','Female',67,'Jaipur','Rajasthan','Jaipur Main','ACC1011','Savings','Senior Citizen','Withdrawal','ATM',18000,802000,'Active',720,'Retired'),
('2026-02-15',112,'Sahil','Male',41,'Delhi','Delhi','Delhi Main','ACC1012','Current','Business','Withdrawal','Cash',95000,415000,'Active',605,'Business Owner'),
('2026-02-16',113,'Riya','Female',26,'Mumbai','Maharashtra','Mumbai Central','ACC1013','Savings','Young','UPI Payment','UPI',8500,56500,'No Loan',590,'Designer'),
('2026-02-17',114,'Deepak','Male',55,'Pune','Maharashtra','Pune Camp','ACC1014','Savings','Regular','Withdrawal','ATM',21000,134000,'Default',575,'Sales Manager'),
('2026-02-18',115,'Anjali','Female',31,'Delhi','Delhi','Delhi Main','ACC1015','Savings','Premium','UPI Payment','UPI',24000,431000,'Active',780,'Consultant'),
('2026-02-19',116,'Manoj','Male',48,'Noida','UP','Noida Sector 18','ACC1016','Current','Business','Deposit','Net Banking',400000,1090000,'Active',690,'Manufacturer'),
('2026-02-20',117,'Komal','Female',22,'Lucknow','UP','Lucknow Main','ACC1017','Savings','Young','UPI Payment','UPI',4500,39000,'No Loan',610,'Student'),
('2026-02-21',118,'Tarun','Male',63,'Mumbai','Maharashtra','Mumbai Central','ACC1018','Savings','Senior Citizen','Withdrawal','ATM',15000,295000,'No Loan',705,'Retired'),
('2026-02-22',119,'Nisha','Female',37,'Jaipur','Rajasthan','Jaipur Main','ACC1019','Savings','Regular','Deposit','UPI',55000,175000,'Active',625,'Accountant'),
('2026-02-23',120,'Mohit','Male',34,'Delhi','Delhi','Delhi Main','ACC1020','Savings','Premium','Withdrawal','Net Banking',45000,240000,'Active',750,'Engineer'),

('2026-03-01',101,'Rahul','Male',28,'Delhi','Delhi','Delhi Main','ACC1001','Savings','Premium','Deposit','UPI',65000,305000,'No Loan',742,'Software Engineer'),
('2026-03-02',102,'Priya','Female',32,'Mumbai','Maharashtra','Mumbai Central','ACC1002','Savings','Premium','UPI Payment','UPI',19000,661000,'Active',765,'Doctor'),
('2026-03-03',103,'Amit','Male',45,'Delhi','Delhi','Delhi Main','ACC1003','Current','Business','Deposit','Cash',450000,1090000,'Active',710,'Business Owner'),
('2026-03-04',104,'Neha','Female',29,'Pune','Maharashtra','Pune Camp','ACC1004','Savings','Regular','Withdrawal','ATM',16000,159500,'No Loan',690,'Teacher'),
('2026-03-05',105,'Rohit','Male',61,'Jaipur','Rajasthan','Jaipur Main','ACC1005','Savings','Senior Citizen','Deposit','Cheque',110000,480000,'No Loan',735,'Retired'),
('2026-03-06',106,'Pooja','Female',24,'Delhi','Delhi','Delhi Main','ACC1006','Savings','Young','UPI Payment','UPI',4000,83000,'No Loan',680,'Student'),
('2026-03-07',107,'Ankit','Male',38,'Noida','UP','Noida Sector 18','ACC1007','Current','Business','Deposit','Net Banking',275000,1100000,'Active',725,'Business Owner'),
('2026-03-08',108,'Sneha','Female',35,'Mumbai','Maharashtra','Mumbai Central','ACC1008','Savings','Premium','Withdrawal','UPI',27000,311000,'Active',755,'Manager'),
('2026-03-09',109,'Vikas','Male',52,'Lucknow','UP','Lucknow Main','ACC1009','Savings','Regular','Deposit','Cash',60000,252000,'No Loan',640,'Trader'),
('2026-03-10',110,'Karan','Male',27,'Pune','Maharashtra','Pune Camp','ACC1010','Savings','Young','UPI Payment','UPI',9000,62000,'No Loan',655,'Analyst'),

('2026-03-14',111,'Meena','Female',67,'Jaipur','Rajasthan','Jaipur Main','ACC1011','Savings','Senior Citizen','Deposit','Net Banking',250000,1052000,'Active',720,'Retired'),
('2026-03-15',112,'Sahil','Male',41,'Delhi','Delhi','Delhi Main','ACC1012','Current','Business','Withdrawal','Cheque',120000,295000,'Active',605,'Business Owner'),
('2026-03-16',113,'Riya','Female',26,'Mumbai','Maharashtra','Mumbai Central','ACC1013','Savings','Young','UPI Payment','UPI',7000,49500,'No Loan',590,'Designer'),
('2026-03-17',114,'Deepak','Male',55,'Pune','Maharashtra','Pune Camp','ACC1014','Savings','Regular','Deposit','Cash',50000,184000,'Default',575,'Sales Manager'),
('2026-03-18',115,'Anjali','Female',31,'Delhi','Delhi','Delhi Main','ACC1015','Savings','Premium','Deposit','Net Banking',300000,731000,'Active',780,'Consultant'),
('2026-03-19',116,'Manoj','Male',48,'Noida','UP','Noida Sector 18','ACC1016','Current','Business','Withdrawal','Cash',310000,780000,'Active',690,'Manufacturer'),
('2026-03-20',117,'Komal','Female',22,'Lucknow','UP','Lucknow Main','ACC1017','Savings','Young','UPI Payment','UPI',3500,35500,'No Loan',610,'Student'),
('2026-03-21',118,'Tarun','Male',63,'Mumbai','Maharashtra','Mumbai Central','ACC1018','Savings','Senior Citizen','Withdrawal','ATM',22000,273000,'No Loan',705,'Retired'),
('2026-03-22',119,'Nisha','Female',37,'Jaipur','Rajasthan','Jaipur Main','ACC1019','Savings','Regular','Withdrawal','ATM',28000,147000,'Active',625,'Accountant'),
('2026-03-23',120,'Mohit','Male',34,'Delhi','Delhi','Delhi Main','ACC1020','Savings','Premium','Deposit','UPI',85000,325000,'Active',750,'Engineer'),

('2026-04-01',101,'Rahul','Male',28,'Delhi','Delhi','Delhi Main','ACC1001','Savings','Premium','UPI Payment','UPI',21000,284000,'No Loan',742,'Software Engineer'),
('2026-04-02',102,'Priya','Female',32,'Mumbai','Maharashtra','Mumbai Central','ACC1002','Savings','Premium','Deposit','Net Banking',180000,841000,'Active',765,'Doctor'),
('2026-04-03',103,'Amit','Male',45,'Delhi','Delhi','Delhi Main','ACC1003','Current','Business','Withdrawal','Cheque',200000,890000,'Active',710,'Business Owner'),
('2026-04-04',104,'Neha','Female',29,'Pune','Maharashtra','Pune Camp','ACC1004','Savings','Regular','UPI Payment','UPI',7500,152000,'No Loan',690,'Teacher'),
('2026-04-05',105,'Rohit','Male',61,'Jaipur','Rajasthan','Jaipur Main','ACC1005','Savings','Senior Citizen','Withdrawal','ATM',17000,463000,'No Loan',735,'Retired'),
('2026-04-06',106,'Pooja','Female',24,'Delhi','Delhi','Delhi Main','ACC1006','Savings','Young','UPI Payment','UPI',5500,77500,'No Loan',680,'Student'),
('2026-04-07',107,'Ankit','Male',38,'Noida','UP','Noida Sector 18','ACC1007','Current','Business','Deposit','Cheque',500000,1600000,'Active',725,'Business Owner'),
('2026-04-08',108,'Sneha','Female',35,'Mumbai','Maharashtra','Mumbai Central','ACC1008','Savings','Premium','UPI Payment','UPI',32000,279000,'Active',755,'Manager'),
('2026-04-09',109,'Vikas','Male',52,'Lucknow','UP','Lucknow Main','ACC1009','Savings','Regular','Withdrawal','Cash',25000,227000,'No Loan',640,'Trader'),
('2026-04-10',110,'Karan','Male',27,'Pune','Maharashtra','Pune Camp','ACC1010','Savings','Young','UPI Payment','UPI',6000,56000,'No Loan',655,'Analyst'),

('2026-04-11',111,'Meena','Female',67,'Jaipur','Rajasthan','Jaipur Main','ACC1011','Savings','Senior Citizen','Withdrawal','ATM',30000,1022000,'Active',720,'Retired'),
('2026-04-12',112,'Sahil','Male',41,'Delhi','Delhi','Delhi Main','ACC1012','Current','Business','Deposit','Cash',275000,570000,'Active',605,'Business Owner'),
('2026-04-13',113,'Riya','Female',26,'Mumbai','Maharashtra','Mumbai Central','ACC1013','Savings','Young','UPI Payment','UPI',9500,40000,'No Loan',590,'Designer'),
('2026-04-14',114,'Deepak','Male',55,'Pune','Maharashtra','Pune Camp','ACC1014','Savings','Regular','Withdrawal','ATM',18000,166000,'Default',575,'Sales Manager'),
('2026-04-15',115,'Anjali','Female',31,'Delhi','Delhi','Delhi Main','ACC1015','Savings','Premium','UPI Payment','UPI',28000,703000,'Active',780,'Consultant'),
('2026-04-16',116,'Manoj','Male',48,'Noida','UP','Noida Sector 18','ACC1016','Current','Business','Deposit','Net Banking',350000,1130000,'Active',690,'Manufacturer'),
('2026-04-17',117,'Komal','Female',22,'Lucknow','UP','Lucknow Main','ACC1017','Savings','Young','UPI Payment','UPI',2500,33000,'No Loan',610,'Student'),
('2026-04-18',118,'Tarun','Male',63,'Mumbai','Maharashtra','Mumbai Central','ACC1018','Savings','Senior Citizen','Deposit','Cheque',95000,368000,'No Loan',705,'Retired'),
('2026-04-19',119,'Nisha','Female',37,'Jaipur','Rajasthan','Jaipur Main','ACC1019','Savings','Regular','UPI Payment','UPI',11000,136000,'Active',625,'Accountant'),
('2026-04-20',120,'Mohit','Male',34,'Delhi','Delhi','Delhi Main','ACC1020','Savings','Premium','Withdrawal','Net Banking',60000,265000,'Active',750,'Engineer'),

('2026-05-01',101,'Rahul','Male',28,'Delhi','Delhi','Delhi Main','ACC1001','Savings','Premium','Deposit','UPI',100000,384000,'No Loan',742,'Software Engineer'),
('2026-05-02',102,'Priya','Female',32,'Mumbai','Maharashtra','Mumbai Central','ACC1002','Savings','Premium','Withdrawal','UPI',35000,806000,'Active',765,'Doctor'),
('2026-05-03',103,'Amit','Male',45,'Delhi','Delhi','Delhi Main','ACC1003','Current','Business','Deposit','Net Banking',600000,1490000,'Active',710,'Business Owner'),
('2026-05-04',104,'Neha','Female',29,'Pune','Maharashtra','Pune Camp','ACC1004','Savings','Regular','Withdrawal','ATM',14000,138000,'No Loan',690,'Teacher'),
('2026-05-05',105,'Rohit','Male',61,'Jaipur','Rajasthan','Jaipur Main','ACC1005','Savings','Senior Citizen','Deposit','Cheque',70000,533000,'No Loan',735,'Retired'),
('2026-05-06',106,'Pooja','Female',24,'Delhi','Delhi','Delhi Main','ACC1006','Savings','Young','UPI Payment','UPI',3000,74500,'No Loan',680,'Student'),
('2026-05-07',107,'Ankit','Male',38,'Noida','UP','Noida Sector 18','ACC1007','Current','Business','Withdrawal','Net Banking',450000,1150000,'Active',725,'Business Owner'),
('2026-05-08',108,'Sneha','Female',35,'Mumbai','Maharashtra','Mumbai Central','ACC1008','Savings','Premium','Deposit','UPI',75000,354000,'Active',755,'Manager'),
('2026-05-09',109,'Vikas','Male',52,'Lucknow','UP','Lucknow Main','ACC1009','Savings','Regular','Withdrawal','Cash',32000,195000,'No Loan',640,'Trader'),
('2026-05-10',110,'Karan','Male',27,'Pune','Maharashtra','Pune Camp','ACC1010','Savings','Young','UPI Payment','UPI',8000,48000,'No Loan',655,'Analyst');
-- Module 1 – Basic Reporting
--  Display all customers. 
Select customer_name from bank_transactions;
 -- Display all transactions.
SELECT * FROM bank_transactions;
--  Show deposits only. 
Select transaction_type from bank_transactions where transaction_type="Deposit";
--  Show withdrawals only.
Select transaction_type from bank_transactions where transaction_type="Withdrawal";
--  Find transactions above ₹50,000.
Select transaction_amount as Bankpayments from bank_transactions where transaction_amount >50000;
--  List customers from Delhi.
Select customer_name from bank_transactions where city ="Delhi";
--  Display Savings accounts. 
select account_type from bank_transactions where account_type="Savings";
--  Display Current accounts. 
select account_type from bank_transactions where account_type="Current";
--  Find female customers. 
Select customer_name from bank_transactions where gender="Female";
--  Find customers older than 60. 
Select customer_name from bank_transactions where age >60;
--  Show all UPI transactions.
select customer_name,account_type,gender,transaction_type, payment_channel from bank_transactions where payment_channel="UPI";
--  Show ATM transactions.
select customer_name,account_type,gender,transaction_type, payment_channel from bank_transactions where payment_channel="ATM";
--  Show Cheque transactions. 
select customer_name,account_type,gender,transaction_type, payment_channel from bank_transactions where payment_channel="Cheque";
--  Show Net Banking transactions. 
select customer_name,account_type,gender,transaction_type, payment_channel from bank_transactions where payment_channel="Net Banking";
-- Display transactions in January.
SELECT *, MONTH(transaction_date) AS Month FROM bank_transactions where MONTH(transaction_date)=1;
--  Sort by transaction amount. 
Select * from bank_transactions order by transaction_amount desc;
--  Display unique cities.
Select City as Unique_City from bank_transactions group by city;
--  Display unique branches. 
Select Branch_Name as Unique_Branch from bank_transactions group by Branch_name;
--  Count total customers. 
SELECT COUNT(DISTINCT customer_id) AS total_customers from bank_transactions ;
--  Count total transactions. 
select count(*) AS total_transactions from bank_transactions ;

-- Module 2 – Business KPIs

-- Total bank business. 
SELECT SUM(transaction_amount) AS Total_Business FROM bank_transactions;
--  Total deposits.
SELECT SUM(transaction_amount) AS Total_Deposits FROM bank_transactions where transaction_type="Deposit";
--  Total withdrawals.
SELECT SUM(transaction_amount) AS Total_Withdrawals FROM bank_transactions where transaction_type="Withdrawal";
-- Average transaction. 
SELECT ROUND(AVG(transaction_amount), 2) AS Average_Transaction FROM  bank_transactions ;
-- Highest transaction. 
SELECT max(transaction_amount) AS  Highest_Transaction FROM bank_transactions;
--  Lowest transaction. 
SELECT min(transaction_amount) AS  Highest_Transaction FROM bank_transactions;
--  Branch-wise business. 
SELECT Branch_name,SUM(transaction_amount) AS Branch_Wise_Business FROM bank_transactions group by branch_name;
 -- City-wise business. 
SELECT City,SUM(transaction_amount) AS City_Wise_Business FROM bank_transactions group by City;
--  State-wise business. 
SELECT State,SUM(transaction_amount) AS City_Wise_Business FROM bank_transactions group by State;
--  Account type-wise business. 
SELECT Account_type,SUM(transaction_amount) AS Account_Type_Wise_Business FROM bank_transactions group by Account_type;
--  Customer segment-wise business.
SELECT customer_segment,SUM(transaction_amount) AS customer_segment_Wise_Business FROM bank_transactions group by customer_segment;
--  Gender-wise business.
SELECT Gender,SUM(transaction_amount) AS Gender_Wise_Business FROM bank_transactions group by Gender;
--  Occupation-wise business.
SELECT Occupation,SUM(transaction_amount) AS Occupation_Wise_Business FROM bank_transactions group by Occupation;
--  Average balance.
SELECT round(AVG(balance_after_transaction),2) AS Average_Balance FROM bank_transactions;
--  Maximum balance. 
SELECT max(balance_after_transaction) AS  Maximum_Balance FROM bank_transactions;
--  Minimum balance.
SELECT min(balance_after_transaction) AS  Minimum_Balance FROM bank_transactions;
--  Monthly business.
SELECT DATE_FORMAT(transaction_date, '%M') AS Month, SUM(transaction_amount) AS Monthly_Business 
FROM bank_transactions GROUP BY DATE_FORMAT(transaction_date, '%M');
--  Quarterly business. 
SELECT QUARTER(transaction_date) AS Quarter, SUM(transaction_amount) AS Quarterly_Business 
FROM bank_transactions GROUP BY QUARTER(transaction_date);
--  Yearly business.
SELECT YEAR(transaction_date) AS Yearly, SUM(transaction_amount) AS Yearly_Business 
FROM bank_transactions GROUP BY YEAR(transaction_date);

-- Module 3 – Customer Analytics

--  Top 10 customers by business. 
SELECT customer_id, customer_name,sum(transaction_amount)AS Total_Business
FROM bank_transactions
GROUP BY customer_name,customer_id
ORDER BY Total_Business DESC
LIMIT 10;
--  Customers with more than five transactions. 
Select customer_name, count(*) as Transactions_Count from bank_transactions  group by customer_name having count(*)>5;
 -- Customers having business above ₹5,00,000. 
 SELECT customer_id, customer_name,sum(transaction_amount)AS Customers_Business 
 from bank_transactions group by customer_id, customer_name having Customers_Business > 500000;
 --  Customers with low credit score.
 select Customer_name, credit_score from bank_transactions where credit_score < 600;
--  Customers with high credit score. 
select Customer_name, credit_score from bank_transactions where credit_score > 600;
-- . Senior citizen customers.
Select Customer_name,customer_segment from bank_transactions where customer_segment = "Senior Citizen";
--  Young customers. 
Select Customer_name,customer_segment from bank_transactions where customer_segment = "Young";
--  Premium customers.
Select Customer_name,customer_segment from bank_transactions where customer_segment = "Premium";
--  Salary account customers. 
Select Customer_name,Account_type from bank_transactions where Account_type = "Salary";
--  Business account customers.
Select Customer_name,customer_segment from bank_transactions where customer_segment = "Business";
--  Average customer age.
Select  avg(age) as  Average_Customer_Age from bank_transactions;
-- Age-group analysis.
Select CASE when age between 18 and 25 then 'Young' when age between 26 and 40 then 'Adult' when age between 41 and 60 then 'Middle Age'
when age >=61 then 'Senior' END as Age_Group, count(*) as Transaction_Count 
from bank_transactions group by Age_Group order by Transaction_Count desc;
-- City-wise customer count.
Select count(distinct Customer_id) as City_Wise_Customer, City from bank_transactions group by City;
--  State-wise customer count. 
Select count(distinct Customer_id) as State_Wise_Customer, State from bank_transactions group by State;
--  Customer segment distribution.
Select count(distinct Customer_id) as customer_segment_Wise_Customer, customer_segment from bank_transactions group by customer_segment;
--  Occupation distribution.
Select count(distinct Customer_id) as Occupation_Wise_Distribution, occupation from bank_transactions group by occupation;
--  Customers using only UPI
Select customer_name as Customers_using_UPI, Payment_channel from bank_transactions where Payment_channel="UPI";
-- . Customers using only ATM. 
Select customer_name as Customers_using_ATM, Payment_channel from bank_transactions where Payment_channel="ATM";
--  Customers using Net Banking. 
Select customer_name as Customers_using_Net_Banking, Payment_channel from bank_transactions where Payment_channel="Net Banking";
--  Customers with highest balance. 
Select customer_name, balance_after_transaction from bank_transactions order by balance_after_transaction desc limit 10;

-- Module 4 – Branch Performance
-- Highest-performing branch.
 Select Branch_name as Highest_Performing_Branch, sum(transaction_amount)  
 from bank_transactions GROUP BY Branch_name order by sum(transaction_amount) desc limit 1;
 --  Lowest-performing branch. 
  Select Branch_name as Lowest_Performing_Branch, sum(transaction_amount) 
  from bank_transactions GROUP BY Branch_name order by sum(transaction_amount) asc limit 1;
   -- Branch with maximum deposits.
Select Branch_name as Branch_with_Maximum_Deposits , SUM(transaction_amount)  from bank_transactions
where transaction_type='Deposit'group by Branch_name order by SUM(transaction_amount) limit 1;
--  Branch with maximum withdrawals.
Select Branch_name as Branch_with_Maximum_withdrawals , SUM(transaction_amount)  from bank_transactions
where transaction_type='withdrawal'group by Branch_name order by SUM(transaction_amount) limit 1;
--  Average transaction by branch. 
Select Branch_name as Average_transaction, avg(transaction_amount) from bank_transactions group by branch_name;
--  Total customers by branch. 
Select Branch_name,COUNT(DISTINCT customer_id) AS Total_Customers from bank_transactions group by branch_name;
-- Branch-wise average balance. 
Select Branch_name, round(avg(balance_after_transaction),2) as Branch_wise_average_balance from bank_transactions group by branch_name;
--  Branch-wise credit score. 
Select Branch_name, round(avg(credit_score),2) as Branch_wise_credit_score from bank_transactions group by Branch_name;
 -- Branch-wise premium customers.
Select Branch_name, COUNT(DISTINCT customer_id) AS Branch_wise_Premium_Customers from bank_transactions 
where Customer_segment="Premium"group by Branch_name;
--  Branch-wise business growth.
Select Branch_name, count(Customer_segment) as Branch_wise_Business_Growth from bank_transactions 
where Customer_segment="Business"group by Branch_name;
--  Branch-wise cash transactions. 
Select Branch_name, count(payment_channel) as Branch_wise_cash_transactions from bank_transactions 
where payment_channel="Cash"group by Branch_name;
--  Branch-wise digital transactions. 
Select Branch_name, count(payment_channel) as Branch_wise_digital_transactions from bank_transactions 
where payment_channel != "Cash"group by Branch_name; 
# we can also use where payment_channel IN ('UPI', 'ATM', 'Net Banking', 'Mobile Banking')
--  Branch-wise customer segment analysis. 
Select COUNT(DISTINCT customer_id),customer_segment,Branch_name from bank_transactions group by Branch_name,customer_segment;
-- . Branch-wise gender ratio. 
Select Branch_name,Gender,COUNT(DISTINCT customer_id) as Customer_Count from bank_transactions GROUP BY Branch_name, Gender;
--  Branch-wise occupation analysis. 
Select COUNT(DISTINCT customer_id),occupation,Branch_name from bank_transactions group by Branch_name,occupation;

-- Module 5 – Fraud & Risk Analytics
--  Transactions above ₹2,00,000.
Select Customer_Name,transaction_amount from bank_transactions where transaction_amount>200000;
-- . Cash deposits above ₹2,00,000.
Select Customer_Name,transaction_amount, Transaction_type,Payment_Channel from bank_transactions 
where transaction_amount>200000 and Transaction_type="Deposit" and Payment_Channel = 'Cash';
--  Cash withdrawals above ₹2,00,000. 
Select Customer_Name,transaction_amount, Transaction_type,Payment_Channel from bank_transactions 
where transaction_amount>200000 and Transaction_type="Withdrawal" and Payment_Channel = 'Cash';
-- Customers with multiple high-value transactions
Select Customer_Name,Customer_id, COUNT(*) AS High_Value_Transactions from bank_transactions 
where transaction_amount>200000  group by Customer_Name,Customer_id HAVING COUNT(*) > 1 ;
 -- . Customers with low balance. 
 Select Customer_Name,Customer_id ,balance_after_transaction from bank_transactions order by balance_after_transaction asc limit 10;
--  Customers with credit score below 600.
Select Customer_Name,Customer_id , credit_score from bank_transactions where credit_score <600 ;
-- Transactions during weekends. 
SELECT * FROM bank_transactions WHERE DAYOFWEEK(transaction_date) IN (1,7);
-- Large withdrawals. 
Select * from bank_transactions where transaction_type="withdrawal" and transaction_amount >200000;
-- . Large deposits. 
Select * from bank_transactions where transaction_type="deposit" and transaction_amount >200000;
 -- Suspicious repeated transactions. 
 Select customer_id, customer_name from bank_transactions where transaction_amount > 200000 group by customer_id having COUNT(*) > 1;
 --  Customers making many ATM withdrawals.
 Select customer_id, customer_name from bank_transactions where payment_channel = 'ATM' and transaction_type="withdrawal"
group by customer_id, customer_name having COUNT(*) > 1;
-- Customers making many UPI payments. 
Select customer_id, customer_name from bank_transactions where payment_channel = 'UPI' group by customer_id, customer_name 
having COUNT(*) > 1;
-- Branches with high-risk customers. 
-- Hum abhi assumption le rahe hain: High-risk = credit_score < 600
Select branch_name, count(distinct customer_id) as high_risk_customers from bank_transactions
where credit_score < 600 group by branch_name;
-- Customers with loan default status. 
Select * from bank_transactions where loan_status = 'Default';
 -- High-risk customer report.
 select customer_id, customer_name,credit_score,loan_status from bank_transactions where credit_score < 600 or loan_status = 'Default' or 
 transaction_amount >200000;
 -- Module 6 – Dashboard KPIs
  -- Total Customers 
  select count(distinct customer_id) from bank_transactions; 
  --  Total Transactions
  select count(*) as Total_Transactions from bank_transactions; 
  -- . Total Business 
    select sum(transaction_amount) as Total_Transactions from bank_transactions; 
    -- Total Deposits
    select sum(transaction_amount) as Total_Deposits from bank_transactions where transaction_type = 'Deposit';
--  Total Withdrawals
    select sum(transaction_amount) as Total_Withdrawals from bank_transactions where transaction_type = 'Withdrawal';
--  Average Transaction
  select avg(transaction_amount) as Avg_Transactions from bank_transactions; 
--  Average Balance 
 select avg(balance_after_transaction) as Avg_Balance from bank_transactions; 
 --  Highest Transaction
 select max(transaction_amount) as Total_Withdrawals from bank_transactions ;
 -- .  Best Branch 
 select branch_name, sum(transaction_amount) as total_busines from bank_transactions
group by branch_name order by total_business DESC limit 1;
 --  Best Customer
 select customer_name,sum(transaction_amount) as total_business from bank_transactions 
 group by customer_name order by total_business desc limit 1;







