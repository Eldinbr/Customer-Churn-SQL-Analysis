CREATE TABLE customers (
customer_id VARCHAR(12) PRIMARY KEY,
first_name VARCHAR(50), last_name VARCHAR(50), gender VARCHAR(20),
senior_citizen VARCHAR(5), partner VARCHAR(5), dependents VARCHAR(5),
city VARCHAR(50), tenure_months INT, contract VARCHAR(30),
internet_service VARCHAR(30), tech_support VARCHAR(5),
paperless_billing VARCHAR(5), payment_method VARCHAR(30),
monthly_charges NUMERIC(10,2), total_charges NUMERIC(12,2), churn VARCHAR(5)
);