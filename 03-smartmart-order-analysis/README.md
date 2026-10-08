# SmartMart Retail Order Analysis using MySQL

## Project Overview

This project analyzes product and customer order data for SmartMart Retail Pvt. Ltd., a fictional retail business. The objective is to evaluate product performance, sales quantity, customer purchasing patterns, supplier performance, inventory levels, and revenue.

The project contains **55 SQL business and analytical questions**, progressing from basic data retrieval to joins, aggregate analysis, business KPIs, inventory insights, and revenue analysis.

## Business Objectives

- Identify top-selling and least-selling products.
- Analyze category-wise and brand-wise sales quantity.
- Evaluate supplier performance using sales data.
- Understand city-wise orders and payment-mode usage.
- Identify products that have never been ordered.
- Analyze current stock levels and potential restocking priorities.
- Calculate revenue using product selling prices and order quantities.
- Build an executive-style KPI report.

## Database and Dataset

| Item | Details |
|---|---|
| Database | `RetailAnalyticsDB` |
| Product table | `items` |
| Order table | `orders` |
| Sample products | 8 |
| Sample orders | 10 |
| Categories in sample data | Electronics, Furniture, Grocery, Clothing |
| Order date range | January 2026 |

### Table 1 — `items`

Stores product master information.

**Key fields:** `item_id`, `item_name`, `category`, `brand`, `purchase_price`, `selling_price`, `stock_quantity`, `supplier_name`

### Table 2 — `orders`

Stores customer order information.

**Key fields:** `order_id`, `order_date`, `customer_name`, `city`, `payment_mode`, `quantity`, `item_id`

## Database Schema

The `items` table is connected to the `orders` table through `item_id`.

- **Primary Key:** `items.item_id`
- **Foreign Key:** `orders.item_id`
- **Relationship:** One product can appear in multiple orders.

![SmartMart Database Schema](01_schema.png)

## SQL Concepts Used

`SELECT` · `WHERE` · `DISTINCT` · `ORDER BY` · `LIMIT` · `INNER JOIN` · `LEFT JOIN` · Subqueries · `GROUP BY` · `COUNT()` · `SUM()` · `AVG()` · `MAX()` · `MIN()` · Aggregate filtering · Foreign Keys · KPI Reporting

## Analysis Modules

### Module 1 — Basic Data Retrieval and Filtering
**Questions Q1–Q10**

- Retrieve product and order records.
- Filter products by category, price, and stock.
- Filter orders by city and payment mode.
- Display unique cities.
- Sort products and identify the most expensive items.

### Module 2 — Joining Product and Order Data
**Questions Q11–Q15**

- Connect customer orders with product information.
- Display customer names, product names, and quantities.
- Analyze customer purchases alongside categories, brands, and suppliers.

### Module 3 — Grouped Product and Sales Analysis
**Questions Q16–Q25**

- Calculate product-wise quantity sold.
- Analyze category-wise and brand-wise sales.
- Compare supplier sales and city-wise orders.
- Summarize payment modes.
- Count products and orders by relevant business dimensions.

### Module 4 — Aggregate Business Metrics
**Questions Q26–Q35**

- Identify the most- and least-sold products.
- Find the highest- and lowest-priced products.
- Calculate average selling price.
- Measure available inventory and total quantity sold.
- Calculate product count, order count, and average order quantity.

### Module 5 — Business and Inventory Analytics
**Questions Q36–Q50**

- Identify the most popular product category.
- Analyze high-performing cities, suppliers, and brands.
- Find products that have never been ordered.
- Identify low-stock products.
- Compare customer purchases across product categories.
- Generate a consolidated business KPI report.

### Module 6 — Advanced Revenue Analysis
**Bonus Questions Q51–Q55**

- Calculate revenue by product.
- Identify the top three products by revenue.
- Analyze category-wise and supplier-wise revenue.
- Calculate average revenue per order.

## Executive KPI Report

The KPI report consolidates the key operational metrics into one result.

| KPI | Description |
|---|---|
| Total Products | Number of products in the `items` table |
| Total Orders | Number of records in the `orders` table |
| Total Quantity Sold | Sum of ordered quantities |
| Total Stock Available | Sum of current product stock |
| Average Selling Price | Average listed selling price across products |

![SmartMart KPI Report](02_kpi_report.png)

## Product Sales Analysis

This analysis compares product-wise sales quantity to identify top-selling and least-selling products.

![Product Sales Analysis](03_product_sales_analysis.png)

## Category and Supplier Analysis

This section evaluates category demand, brand performance, and supplier contribution using sales quantity.

![Category and Supplier Analysis](04_category_supplier_analysis.png)

## City and Payment Analysis

This analysis compares order frequency across cities and payment methods.

![City and Payment Analysis](05_city_payment_analysis.png)

## Inventory Analysis

Inventory analysis identifies products with low stock, compares stock quantities, and supports restocking decisions using sales performance.

![Inventory Analysis](06_inventory_analysis.png)

## Revenue Analysis

Revenue is calculated using the quantity ordered multiplied by the product's listed selling price. The results compare product, category, and supplier contributions.

![Revenue Analysis](07_revenue_analysis.png)

## Sample Data Insights

The following figures are calculated from the assignment's sample data and are intended for SQL practice.

| Metric | Sample Result |
|---|---:|
| Total Products | 8 |
| Total Orders | 10 |
| Total Quantity Sold | 20 units |
| Total Stock Available | 975 units |
| Average Selling Price | ₹16,308.75 |
| Highest-Quantity Category | Grocery — 8 units |
| Highest-Quantity Supplier | Fresh Foods — 8 units |
| Highest-Quantity Brand | Fortune — 5 units |
| City with Most Orders | Delhi — 4 orders |
| Most-Used Payment Mode | UPI — 4 orders |
| Highest-Revenue Product | Laptop — ₹1,04,000 |

**Metric definitions:** Payment-mode usage is measured by order count, while sales quantity is measured by summing `quantity`. These measure different things.

## Business Value

The queries demonstrate how relational data can help a retail business understand product demand, compare suppliers, track inventory, evaluate purchasing patterns, and summarize operational performance.

## How to Run

1. Open MySQL Workbench.
2. Open `smartmart_order_analysis.sql`.
3. Execute the database creation and table creation statements.
4. Insert the provided sample product and order records.
5. Run the SQL questions individually or in logical groups.
6. Review the result sets and compare them with the analysis objectives.

## Limitations

- The dataset is a small sample created for learning and demonstration.
- Revenue represents estimated sales value based on listed selling prices and quantities; discounts, taxes, and actual transaction-level prices are not provided.
- Restocking recommendations based on this sample should be treated as analytical exercises, not operational purchasing decisions.

## Skills Demonstrated

**MySQL | SQL | Data Analysis | Relational Databases | Primary and Foreign Keys | Joins | Subqueries | Aggregation | Business KPIs | Inventory Analysis | Revenue Analysis | Business Reporting**
