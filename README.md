Retail Insights 360: A SQL-Driven Business Analysis

    Project Overview

This project demonstrates how SQL can be used to extract actionable business insights from a retail dataset.
I designed and implemented the database schema, created tables, and imported raw CSV data into MySQL using the Import Wizard.
Subsequently, advanced SQL techniques were applied to perform customer segmentation, product performance analysis, order trends, and profitability studies — enabling data-driven decision-making.
 
    Dataset

The project uses a retail dataset with the following tables:

Customers → customer_id, name, location

Orders → order_id, order_date, total_amount, customer_id

Order_Items → order_item_id, order_id, product_id, quantity

Products → product_id, product_name, category, price

SQL Techniques Used

Joins (INNER JOIN, LEFT JOIN)

Aggregations (SUM, COUNT, AVG)

Common Table Expressions (CTEs)

Window Functions (RANK, DENSE_RANK, Running Totals)

Case Statements (Spend Tier Classification, Customer Segmentation)

RFM Analysis (Recency, Frequency, Monetary)

    Key Analysis

Customer Segmentation (RFM): Identified Champions, At Risk, Low Value customers.

Top Products & Categories: Found top 3 categories contributing ~75% of revenue.

Spend Tiers: Classified customers into High / Medium / Low Value.

Revenue Trends: Monthly and daily order patterns analyzed.

Product Contribution: Calculated revenue share (%) per product line.

    Key Findings

15% of customers (Champions) generate ~45% of total revenue.

Enterprise Software & Cloud Services contribute ~60% of sales.

65% of customers are low-value (< ₹20K spend) — indicating a strong upsell opportunity.

Certain regions underperform, requiring targeted marketing efforts.

    Business Recommendations

Retain “Champions” with loyalty and engagement programs.

Reactivate “At Risk” customers with targeted re-engagement offers.

Bundle Support + Training with Software sales to improve adoption.

Optimize discounting strategies in low-margin categories.
