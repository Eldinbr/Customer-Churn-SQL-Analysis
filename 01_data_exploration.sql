-- Customer count
SELECT COUNT(*) AS total_customers FROM customers;

-- Churn distribution
SELECT churn, COUNT(*) AS customers
FROM customers GROUP BY churn ORDER BY customers DESC;

-- Customers by contract
SELECT contract, COUNT(*) AS customers
FROM customers GROUP BY contract ORDER BY customers DESC;

-- Average monthly charge by contract
SELECT contract, ROUND(AVG(monthly_charges),2) AS avg_monthly_charge
FROM customers GROUP BY contract ORDER BY avg_monthly_charge DESC;