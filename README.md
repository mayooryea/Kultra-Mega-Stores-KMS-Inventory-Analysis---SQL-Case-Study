# Kultra-Mega-Stores-KMS-Inventory-Analysis---SQL-Case-Study

Prepared By:

Omoniyi Mayowa Maria
Business Intelligence & Data Analyst


👋 Introduction
Hello! I'm Omoniyi Mayowa, a Data Analyst specializing in transforming raw data into actionable business insights. 
This repository presents my comprehensive analysis of Kultra Mega Stores' inventory and sales data from 2009-2012, conducted as my capstone project for the DSA Data Analysis program.

🏢 Business Context: Kultra Mega Stores (KMS), a top office supplies retailer in Nigeria, tasked me with analyzing historical order data from its Abuja division to identify insights for improving operations and boosting profitability.

🎯 Project Objectives
1.	Identify highest-performing products and categories
2.	Analyze regional sales performance
3.	Evaluate customer segmentation and profitability
4.	Optimize shipping methods and costs
5.	Provide actionable recommendations to boost revenue

🛠️ Technical Approach
Data Preparation
•	Performed comprehensive data cleaning on the raw CSV file:
o	Removed duplicate entries
o	Handled null/missing values
o	Standardized data formats
o	Added primary keys for database relationships
•	Created a supplemental Order_Status table for return analysis
Database Design
•	Designed and implemented a SQL Server database schema
•	Established proper table relationships
•	Imported cleaned data into SQL Server Management Studio (SSMS)
SQL Analysis
•	Developed 11 complex SQL queries to:
o	Calculate aggregate sales metrics
o	Identify top/bottom performers
o	Analyze shipping efficiency
o	Evaluate customer segments
o	Assess order priority effectiveness

________________________________________
🔍 **Case Questions & SQL-Based Insights**

Q1. Which product category had the highest sales?

Product Category	Total Sales
Technology	₦89,061.05
![image alt](https://github.com/mayooryea/Kultra-Mega-Stores-KMS-Inventory-Analysis---SQL-Case-Study/blob/2abd95149130694afb6657ec27d1c35209040a3d/Q1.png)

________________________________________
Q2. What are the Top 3 and Bottom 3 Regions by Sales?

🔼 Top 3 Regions
Region	Total Sales
West	₦2,308,128.20
Ontario	₦2,006,946.18
Prarie	₦1,857,181.70

🔽 Bottom 3 Regions
Region	Total Sales
Yukon	₦666,499.33
Northwest Territories	₦528,712.06
Nunavut	₦94,258.37

![image alt](https://github.com/mayooryea/Kultra-Mega-Stores-KMS-Inventory-Analysis---SQL-Case-Study/blob/1c7116abae449e90462c680dfb80330708bbafa0/Q2.png)
________________________________________
Q3. What were the total sales of appliances in Ontario?

Province	Category	Total Sales
Ontario	Appliances	₦2,006,946.18

![image alt](https://github.com/mayooryea/Kultra-Mega-Stores-KMS-Inventory-Analysis---SQL-Case-Study/blob/b80f05fb9119617ec4bfdb2971a8966d99321baf/Q3.png)
________________________________________
Q4. How to Increase Revenue from Bottom 10 Customers?

![image alt](https://github.com/mayooryea/Kultra-Mega-Stores-KMS-Inventory-Analysis---SQL-Case-Study/blob/1c7116abae449e90462c680dfb80330708bbafa0/Q4.png)

⚠️ Identified Issues:
Issue	Impact
High shipping costs on low-margin items	Reduces profitability
Deep discounts on returned or low-profit items	Direct losses
Express shipping used for low-priority orders	Unnecessary costs
High discounting with negative profit	Unsustainable

Recommended Actions:

•	Tighten pricing policies to reduce deep discounts
•	Optimize logistics: use economical shipping methods for low-priority orders
•	Re-train sales teams to better align products with profitable segments
•	Implement profitability dashboards and monitor high-cost customers
•	Use data-driven decisions for shipping mode and discounting
________________________________________
Q5. Which shipping method incurred the highest cost?

Ship Mode	Shipping Cost
Delivery Truck	₦164.73 (highest per unit average)

![image alt](https://github.com/mayooryea/Kultra-Mega-Stores-KMS-Inventory-Analysis---SQL-Case-Study/blob/1c7116abae449e90462c680dfb80330708bbafa0/Q5.png)
________________________________________
Q6. Who are the most valuable customers and their purchased products?

Customer Name	Product Name	Sales	Profit
Emily Phan	Polycom ViewStation™ ISDN Videoconferencing Unit	₦89,061.05	₦27,220.69
Deborah Brumfield	Hewlett Packard LaserJet 3310 Copier	₦28,664.52	₦13,340.26
Karen Carlisle	Canon Image Class D660 Copier	₦29,884.60	₦12,748.86
Raymond Book	Hewlett Packard LaserJet 3310 Copier	₦27,720.98	₦11,984.40
Nick Crebassa	HP Business Color Inkjet 3000 Series Printer	₦29,186.49	₦11,562.08

![image alt](https://github.com/mayooryea/Kultra-Mega-Stores-KMS-Inventory-Analysis---SQL-Case-Study/blob/1c7116abae449e90462c680dfb80330708bbafa0/Q6.png)
________________________________________
Q7. Which Small Business Customer had the Highest Sales?

Customer Name	Total Sales
Deborah Brumfield	₦61,508.45

![image alt](https://github.com/mayooryea/Kultra-Mega-Stores-KMS-Inventory-Analysis---SQL-Case-Study/blob/1c7116abae449e90462c680dfb80330708bbafa0/Q7.png)
________________________________________
Q8. Which Corporate Customer Placed the Most Orders (2009–2012)?

Customer Name	Order Count
Adam Hart	18

![image alt](https://github.com/mayooryea/Kultra-Mega-Stores-KMS-Inventory-Analysis---SQL-Case-Study/blob/1c7116abae449e90462c680dfb80330708bbafa0/Q8.png)
________________________________________
Q9. Who was the Most Profitable Consumer?

Customer Name	Total Profit
Emily Phan	₦32,467.94

![image alt](https://github.com/mayooryea/Kultra-Mega-Stores-KMS-Inventory-Analysis---SQL-Case-Study/blob/1c7116abae449e90462c680dfb80330708bbafa0/Q9.png)
________________________________________
Q10. Which Customers Returned Items and What Segments Do They Belong To?

Customer Name	Segment
Dorothy Badders	Home Office
Grant Carroll	Corporate
Edward Hooks	Consumer
Michelle Lonsdale	Home Office
Carlos Soltero	Small Business

![image alt](https://github.com/mayooryea/Kultra-Mega-Stores-KMS-Inventory-Analysis---SQL-Case-Study/blob/1c7116abae449e90462c680dfb80330708bbafa0/Q10.png)

________________________________________
Q11. Was Shipping Cost Appropriately Aligned with Order Priority?

![image alt](https://github.com/mayooryea/Kultra-Mega-Stores-KMS-Inventory-Analysis---SQL-Case-Study/blob/1c7116abae449e90462c680dfb80330708bbafa0/Q11.png)

🚩 Analysis:
Despite Delivery Truck being the most economical, many Low and Medium priority orders were shipped via Express Air—the most expensive mode.
Order Priority	Ship Mode	Order Count	Est. Shipping Cost	Avg Duration
Critical	Express Air	140	₦133,534.96	1 day
Low	Express Air	139	₦134,323.44	4 days
Medium	Express Air	129	₦159,498.47	1 day

📌 Conclusion:

❌ No, shipping was not appropriately aligned.
Low-priority orders used fast, costly shipping unnecessarily.
High-priority orders sometimes used slower methods.
Order delivery time remained mostly 1 day across modes, negating Express Air's benefits.
________________________________________
📌 Final Recommendations

1.	Align shipping mode with order priority to reduce unnecessary costs.
2.	Identify and renegotiate with customers who consistently yield negative profits.
3.	Build a profitability dashboard to monitor real-time order margins.
4.	Audit logistics partners and incentivize cost-effective deliveries.
5.	Expand in top-performing regions (e.g., West, Ontario) while managing cost in low-performing areas.
________________________________________
📈 Visualizations 

![image alt](https://github.com/mayooryea/Kultra-Mega-Stores-KMS-Inventory-Analysis---SQL-Case-Study/blob/1c7116abae449e90462c680dfb80330708bbafa0/KMS_Inventory_Charts.png)

![image alt](https://github.com/mayooryea/Kultra-Mega-Stores-KMS-Inventory-Analysis---SQL-Case-Study/blob/7afbd025a4a18f26ee4db4dc1b7e6a7c74d6d8be/visual_shipping_cost.png)

![image alt](https://github.com/mayooryea/Kultra-Mega-Stores-KMS-Inventory-Analysis---SQL-Case-Study/blob/7afbd025a4a18f26ee4db4dc1b7e6a7c74d6d8be/top%203%20most%20profitable%20product.png)

1.	Bar Chart: Product Category vs Sales
2.	Bar Chart: Region vs Total Sales
3.	Pie Chart: Shipping Methods by Total Cost
4.	Bar Chart: Top Customers by Profit
________________________________________
💼 Tools Used

•	SSMS SQL Server
• SQL (MySQL / SQL Server)
•	Microsoft Excel
•	Data Cleaning, Aggregation, Pivot Chart
•	Data Visualization (Excel Charts)

________________________________________
✅ For more case studies and SQL-based analysis, follow this repository or connect with me on LinkedIn.

📧 Email: mayooryea@gmail.com

Click on my LinkedIn link:  https://www.linkedin.com/posts/mayowa-omoniyi-460137b6_dataanalytics-certifieddataanalyst-ukrlp-activity-7328796370851594240-02D3?utm_source=share&utm_medium=member_desktop&rcm=ACoAABiUkMgB0-Q468y43-wCcS1zWobEtfdTGL8

