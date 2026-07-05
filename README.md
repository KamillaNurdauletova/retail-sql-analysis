# Retail SQL Analysis — Olist Brazilian E-Commerce Dataset

## Overview
This project analyzes the Olist Brazilian E-Commerce public dataset using SQL to answer business questions about order fulfillment, revenue distribution, sales trends, and product catalog structure.

**Tools used:** SQLite (DB Browser for SQLite)
**Dataset:** [Olist Brazilian E-Commerce Public Dataset](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)

## Business Questions & Key Findings

### 1. Order Status Distribution
What percentage of orders are successfully delivered vs. canceled/unavailable?
- Most orders are successfully delivered, with a smaller share canceled or marked unavailable — useful for tracking fulfillment health.

### 2. Orders by Customer Location
Joined orders with customer data to see geographic distribution of orders.

### 3. Revenue by State (Triple Join)
Which Brazilian states generate the most revenue?
- **São Paulo (SP)** leads by a wide margin, generating ~R$6M in revenue from ~41,745 orders — nearly 3x the second-highest state (Rio de Janeiro).

### 4. Monthly Order Trend
How has order volume grown over time?
- Clear growth trend from late 2016 into 2017, reflecting platform growth.

### 5. Top Product Categories
Which product categories have the largest catalog presence?
- Top categories include bed/bath/table (cama_mesa_banho), sports/leisure, and furniture/decor.

## Skills Demonstrated
- Multi-table JOINs (up to 3 tables)
- Aggregate functions (SUM, COUNT, GROUP BY)
- Date/time functions (strftime)
- Business-oriented data analysis and insight generation

## Files
- `queries.sql` — all SQL queries used in this analysis
