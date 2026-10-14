Project Title: **Customer-Churn-SQL-Analysis**

A SQL-based Customer Churn Analysis project built using PostgreSQL. This project analyzes customer churn, contract types, customer tenure, service usage, monthly charges, payment methods, and customer value to uncover patterns that can support data-driven customer retention and revenue protection strategies.

The project demonstrates practical SQL skills including data exploration, data cleaning, aggregation, Common Table Expressions (CTEs), conditional logic, window functions, ranking, customer segmentation, revenue analysis, and risk scoring.

Preview

<img width="1536" height="1024" alt="e1d2f15d-1d15-4dd6-b8a9-ce0e3db05d14" src="https://github.com/user-attachments/assets/31befd71-a93f-43c8-b9dd-15b8de0ae437" />


### SQL Analysis

The project contains a collection of SQL queries covering customer churn, revenue at risk, customer segmentation, contract performance, and advanced customer risk analysis.

## Table of Contents

- [Overview](#overview)  
- [Dataset](#dataset)
- [Database Schema](#database-schema)
- [Technologies Used](#technologies-used)  
- [Installation](#installation)  
- [Usage](#usage)  
- [Analysis & SQL Queries](#analysis--sql-queries)  
- [Conclusion](#conclusion)  
- [Credits](#credits)  
- [License](#license)  

---

## Overview

- **Motivation:** Customer churn is a major challenge for subscription-based businesses. Understanding which customers are most likely to leave can help organizations improve retention, protect recurring revenue, and improve customer experience.

- **Objective:** The main objective of this project is to analyze customer churn, customer behavior, contract types, service usage, and revenue patterns using PostgreSQL to identify factors associated with customer churn.

- **Learning Outcomes:** While building this project, I learned SQL data exploration, data quality checking, aggregation, conditional logic, Common Table Expressions, window functions, ranking, customer segmentation, revenue analysis, and customer risk scoring.

---

## Dataset

Dataset Information

- **Dataset Type:** Customer Churn Dataset
- **Records:** 5,000 customers
- **Features Included:** Customer ID, Gender, Senior Citizen, Partner, Dependents, City, Tenure, Contract, Internet Service, Technical Support, Paperless Billing, Payment Method, Monthly Charges, Total Charges, and Churn


The dataset was cleaned and prepared before analysis:

- Checked for duplicate customer records
- Checked for missing values
- Validated numeric fields
- Validated churn categories
- Created customer tenure groups
- Calculated churn rates
- Calculated revenue at risk
- Created customer risk segments
---

## Database Schema

The project uses a customer-level relational table containing demographic, subscription, service, financial, and churn information.

<img width="337" height="490" alt="Screenshot 2026-08-18 at 12 38 54 PM" src="https://github.com/user-attachments/assets/ee28a265-ef7b-4ff3-bfa8-47ba5a86b176" />

---

<h2>Technologies Used</h2>

<ul>
  <li><strong>Tools & Platforms:</strong> PostgreSQL, Git, GitHub</li>
  <li><strong>Skills Applied:</strong> Data Cleaning, Data Exploration, Data Analysis, Business Intelligence, SQL Query Development</li>
</ul>

<p>
  <img src="https://img.shields.io/badge/PostgreSQL-4169E1?style=for-the-badge&logo=postgresql&logoColor=white" alt="PostgreSQL">
  <img src="https://img.shields.io/badge/CSV-FFB000?style=for-the-badge&logo=filezilla&logoColor=white" alt="CSV">
  <img src="https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white" alt="Git">
  <img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white" alt="GitHub">
</p>

SQL Concepts Used


- SELECT
- WHERE
- ORDER BY
- GROUP BY
- HAVING
- Aggregate Functions
- CASE WHEN
- CTEs
- Conditional Aggregation
- Subqueries
- Window Functions
- RANK()
- DENSE_RANK()
- Customer Segmentation
- Risk Scoring
---

## Installation

To explore this project locally:

```bash
# Clone the repository
git clone https://github.com/eldinbr/Customer-Churn-SQL-Analysis.git

# Navigate into the project directory
cd Customer-Churn-SQL-Analysis

```

Database Setup

1. Create a PostgreSQL database.
2. Run the database schema: (sql/00_schema.sql)
3. Import the CSV files from the data folder.
4. Execute the SQL scripts in numerical order.

## Usage

Instructions for using the project:

1. Download or clone the repository 
2. Create a PostgreSQL database.
3. Create the required tables using 00_schema.sql.
4. Import the CSV datasets.
5. Run the SQL queries.
6. Review the results and business insights.

The project allows users to:

- Calculate overall customer churn rate
- Compare churn across contract types
- Analyze churn by customer tenure
- Analyze churn by internet service
- Compare churn by payment method
- Analyze customer value segments
- Calculate monthly recurring revenue
- Calculate revenue at risk from churn
- Rank cities based on churn rate
- Identify high-risk customers
- Create customer risk segments

---

## Analysis & SQL Queries


**1. Data Exploration**

The initial analysis explores the structure and distribution of the customer dataset.

Examples include:

- Total number of customers
- Churn distribution
- Customers by contract type
- Customers by internet service
- Average monthly charges by contract

**2. Data Quality Analysis**

Data-quality checks were performed before conducting the main analysis.

The analysis includes:

- Duplicate customer ID detection
- Missing-value checks
- Invalid tenure checks
- Invalid charge checks
- Churn category validation

This ensures that the dataset is suitable for further analysis.

**3. Customer Churn Analysis**

The churn analysis focuses on understanding which customer groups have higher churn rates.

Key questions include:

- What is the overall customer churn rate?
- Which contract type has the highest churn?
- Does customer tenure affect churn?
- Which internet service has the highest churn?
- Which payment method has the highest churn?

Example:

<img width="628" height="269" alt="Screenshot 2026-08-18 at 12 49 53 PM" src="https://github.com/user-attachments/assets/35b2f557-7521-43ac-817a-f40d9cfcf11d" />


**4. Customer Segmentation**

Customers were segmented based on their customer value and service characteristics.

The analysis includes:

- Low-value customers
- Medium-value customers
- High-value customers
- Senior vs non-senior customers
- Customers with and without technical support

This helps identify customer groups that may require different retention strategies.

**5. Revenue Analysis**

The project also analyzes the financial impact of customer churn.

Key metrics include:

- Monthly recurring revenue
- Monthly revenue at risk
- Historical revenue from churned customers
- Average monthly charges
- Average total customer charges
- Revenue by contract type

Example:

<img width="563" height="121" alt="Screenshot 2026-08-18 at 12 54 14 PM" src="https://github.com/user-attachments/assets/51755878-1b9e-4c06-9317-35d50750cafa" />

This analysis helps estimate the potential financial impact of customer churn.

**6. Advanced SQL Analysis**

Advanced SQL techniques were used to perform deeper customer analysis.

**Contract Churn Ranking**

The RANK() window function was used to rank contract types according to their churn rate.

<img width="288" height="106" alt="Screenshot 2026-08-18 at 12 56 22 PM" src="https://github.com/user-attachments/assets/f1cd10a5-4e0e-40f9-a67e-7a4f7897d7c4" />


**City Churn Ranking**

The DENSE_RANK() function was used to identify cities with the highest churn rates.

<img width="297" height="106" alt="Screenshot 2026-08-18 at 12 57 19 PM" src="https://github.com/user-attachments/assets/0b3a9271-7876-4346-9300-b240a592edb7" />


**High-Risk Customer Identification**

Customers were identified as high-risk based on multiple characteristics, including:

- Month-to-month contracts
- Short tenure
- High monthly charges
- Lack of technical support

**Customer Risk Scoring**

A custom SQL risk score was created using multiple customer characteristics.

Customers were classified into:

- High Risk
- Medium Risk
- Low Risk
  
This provides a practical approach to identifying customers who may require proactive retention activity.

**Key Insights**

The analysis focuses on identifying:

- Customer groups with the highest churn
- Contract types associated with higher churn
- The relationship between tenure and churn
- Service-related churn patterns
- High-value customers at risk
- Revenue exposed to customer churn
- Cities with higher churn rates
- Customer characteristics associated with increased churn risk


**Business Value**

The analysis provides insights that can support business decisions related to:

- Customer Retention: Identify customers who are more likely to churn.
- Revenue Protection: Estimate monthly recurring revenue at risk.
- Customer Segmentation: Group customers according to value and churn risk.
- Contract Strategy: Understand churn differences between contract types.
- Service Strategy: Analyze the relationship between customer support and churn.
- Marketing: Develop targeted customer retention campaigns.
- Customer Experience: Identify customer groups that may require additional engagement.





---

## Conclusion 

The Customer Churn SQL Analysis project provides a practical demonstration of how SQL can be used to transform customer data into meaningful business insights.

Through PostgreSQL and advanced SQL techniques, the project analyzes customer churn, customer value, contract performance, service usage, and revenue risk.

The project demonstrates a practical Data Analyst workflow:

Raw Data → Data Quality → SQL Analysis → Customer Segmentation → Business Insights → Recommendations

**Recommendations**

- Improve retention strategies for high-risk month-to-month customers.
- Develop stronger onboarding initiatives for customers during their first year.
- Investigate high monthly charges among customers who churn.
- Promote technical support and proactive customer service.
- Identify high-value customers who are also at high risk of churn.
- Regularly monitor churn by contract, service, payment method, and customer segment.

---

## Credits

- **Collaborators:** Eldin 
- **Dataset:** Customer Churn Dataset
- **Database:** PostgreSQL
- **Analysis Tool:** SQL
- **Version Control:** GitHub 

---

## License

This project is licensed under the [MIT License](https://choosealicense.com/licenses/mit/) – feel free to use and modify it.  

---

<p align="center"><strong>Thanks for visiting! 🚀</strong></p>
