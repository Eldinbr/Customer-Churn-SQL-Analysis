-- Duplicate IDs
SELECT customer_id, COUNT(*) FROM customers
GROUP BY customer_id HAVING COUNT(*) > 1;

-- Missing values
SELECT COUNT(*) FILTER (WHERE customer_id IS NULL) AS missing_id,
COUNT(*) FILTER (WHERE contract IS NULL) AS missing_contract,
COUNT(*) FILTER (WHERE monthly_charges IS NULL) AS missing_monthly_charges,
COUNT(*) FILTER (WHERE churn IS NULL) AS missing_churn
FROM customers;

-- Invalid numeric values
SELECT * FROM customers
WHERE tenure_months < 0 OR monthly_charges < 0 OR total_charges < 0;

-- Unexpected churn values
SELECT DISTINCT churn FROM customers
WHERE churn NOT IN ('Yes','No');