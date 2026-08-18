-- Monthly recurring revenue from retained customers
SELECT ROUND(SUM(monthly_charges),2) AS monthly_recurring_revenue
FROM customers WHERE churn='No';

-- Revenue at risk from churn
SELECT ROUND(SUM(monthly_charges),2) AS monthly_revenue_at_risk,
ROUND(SUM(total_charges),2) AS historical_revenue_from_churned_customers
FROM customers WHERE churn='Yes';

-- Revenue by contract
SELECT contract, ROUND(SUM(monthly_charges),2) AS monthly_revenue,
ROUND(AVG(total_charges),2) AS avg_customer_value
FROM customers GROUP BY contract ORDER BY monthly_revenue DESC;

-- Charges: churned vs retained
SELECT churn, COUNT(*) AS customers,
ROUND(AVG(monthly_charges),2) AS avg_monthly_charges,
ROUND(AVG(total_charges),2) AS avg_total_charges
FROM customers GROUP BY churn;