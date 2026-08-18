-- Overall churn rate
SELECT COUNT(*) AS total_customers,
COUNT(*) FILTER (WHERE churn='Yes') AS churned_customers,
ROUND(100.0*COUNT(*) FILTER (WHERE churn='Yes')/COUNT(*),2) AS churn_rate_pct
FROM customers;

-- Churn by contract
SELECT contract, COUNT(*) AS customers,
COUNT(*) FILTER (WHERE churn='Yes') AS churned_customers,
ROUND(100.0*COUNT(*) FILTER (WHERE churn='Yes')/COUNT(*),2) AS churn_rate_pct
FROM customers GROUP BY contract ORDER BY churn_rate_pct DESC;

-- Churn by internet service
SELECT internet_service, COUNT(*) AS customers,
ROUND(100.0*COUNT(*) FILTER (WHERE churn='Yes')/COUNT(*),2) AS churn_rate_pct
FROM customers GROUP BY internet_service ORDER BY churn_rate_pct DESC;

-- Churn by tenure band
WITH t AS (
SELECT *, CASE
WHEN tenure_months<=6 THEN '0-6 months'
WHEN tenure_months<=12 THEN '7-12 months'
WHEN tenure_months<=24 THEN '13-24 months'
WHEN tenure_months<=36 THEN '25-36 months'
ELSE '37+ months' END AS tenure_band
FROM customers)
SELECT tenure_band, COUNT(*) AS customers,
ROUND(100.0*COUNT(*) FILTER (WHERE churn='Yes')/COUNT(*),2) AS churn_rate_pct
FROM t GROUP BY tenure_band ORDER BY MIN(tenure_months);

-- Churn by payment method
SELECT payment_method, COUNT(*) AS customers,
ROUND(100.0*COUNT(*) FILTER (WHERE churn='Yes')/COUNT(*),2) AS churn_rate_pct
FROM customers GROUP BY payment_method ORDER BY churn_rate_pct DESC;