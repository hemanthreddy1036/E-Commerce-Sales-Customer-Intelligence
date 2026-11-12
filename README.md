# E-Commerce Sales & Customer Intelligence

## Project Overview

This project focuses on analysing e-commerce sales and customer data to identify business trends, understand customer behaviour, evaluate product performance, and generate useful business insights.

The project uses Python for data cleaning and exploratory data analysis, MySQL for business analysis, and Power BI for interactive dashboard visualisation.

**Note:** This project uses a synthetic dataset created for learning and portfolio purposes. It does not represent real company transactions.

## Tools & Technologies

- **Python** – Data cleaning and Exploratory Data Analysis (EDA)
- **Pandas & NumPy** – Data manipulation and analysis
- **Matplotlib & Seaborn** – Data visualisation
- **MySQL** – SQL queries and business analysis
- **Power BI** – Interactive dashboard creation
- **Jupyter Notebook** – Python development environment

## Dataset Description

The project contains five CSV files:

| Dataset | Description |
|---|---|
| customers.csv | Customer information |
| products.csv | Product details and categories |
| orders.csv | Order and transaction information |
| order_items.csv | Individual products within orders |
| returns.csv | Product return and refund information |

## Project Workflow

### 1. Python – Data Cleaning & EDA

- Loaded and explored datasets using Pandas.
- Checked missing values and duplicate records.
- Performed data cleaning and preprocessing.
- Analysed sales, customers, products, and orders.
- Created visualisations to understand data patterns.

Notebook: `python/`

### 2. SQL – Business Analysis

Used MySQL to perform business analysis, including:

- Total sales and order analysis.
- Monthly sales trends.
- Sales by country.
- Top-performing products.
- Product category analysis.
- Customer analysis.
- Sales channel analysis.
- Order status distribution.
- Returns and refund analysis.

SQL file: `sql/02_ecommerce_sales_analysis.sql`

SQL screenshots: `sql/screenshots/`

### 3. Power BI – Interactive Dashboard

Created an interactive dashboard to present important business metrics and trends.

**Dashboard KPIs:**
- Total Sales
- Total Orders
- Average Order Value
- Total Customers
- Total Profit
- Total Units Sold
- Total Returns
- Total Refund Amount
- Average Delivery Days

**Dashboard Visualisations:**
- Monthly Sales Trend
- Sales by Country
- Sales by Product Category
- Top 10 Products
- Sales by Channel
- Order Status Distribution
- Returns by Reason
- Sales Distribution Map

**Interactive Filters:**
- Year
- Country
- Category
- Sales Channel

Dashboard file: `powerbi/Ecommerce_Sales_Dashboard.pbix`

Dashboard screenshot: `powerbi/screenshots/`

## Key Objectives

- Understand overall e-commerce sales performance.
- Identify top-performing products and categories.
- Analyse customer purchasing behaviour.
- Compare sales across different countries and channels.
- Understand order statuses and product returns.
- Present business metrics through an interactive dashboard.

## Project Structure

```text
E-Commerce-Sales-Customer-Intelligence/
│
├── data/
│   ├── customers.csv
│   ├── products.csv
│   ├── orders.csv
│   ├── order_items.csv
│   └── returns.csv
│
├── python/
│   └── 01_data_cleaning_sales_analysis_and_eda.ipynb
│
├── sql/
│   ├── 02_ecommerce_sales_analysis.sql
│   └── screenshots/
│
├── powerbi/
│   ├── Ecommerce_Sales_Dashboard.pbix
│   └── screenshots/
│
└── README.md
```

## Conclusion

This project demonstrates an end-to-end data analytics workflow, covering data cleaning, exploratory analysis, SQL-based business analysis, and interactive dashboard development.

It showcases practical skills in Python, SQL, data visualisation, and Power BI.

---

**Project Type:** Data Analytics Portfolio Project  
**Dataset:** Synthetic E-Commerce Dataset  
**Tools:** Python | MySQL | Power BI