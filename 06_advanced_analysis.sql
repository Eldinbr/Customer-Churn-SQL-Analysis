-- Rank contract types by churn
WITH m AS (
SELECT contract, COUNT(*) AS customers,
COUNT(*) FILTER (WHERE churn='Yes') AS churned_customers,
100.0*COUNT(*) FILTER (WHERE churn='Yes')/COUNT(*) AS churn_rate
FROM customers GROUP BY contract)
SELECT contract, customers, churned_customers,
ROUND(churn_rate,2) AS churn_rate_pct,
RANK() OVER (ORDER BY churn_rate DESC) AS churn_rank
FROM m ORDER BY churn_rank;

-- City churn ranking
WITH m AS (
SELECT city, COUNT(*) AS customers,
COUNT(*) FILTER (WHERE churn='Yes') AS churned_customers,
100.0*COUNT(*) FILTER (WHERE churn='Yes')/COUNT(*) AS churn_rate
FROM customers GROUP BY city)
SELECT city, customers, churned_customers,
ROUND(churn_rate,2) AS churn_rate_pct,
DENSE_RANK() OVER (ORDER BY churn_rate DESC) AS city_rank
FROM m ORDER BY city_rank;

-- High-risk customers
SELECT customer_id, first_name||' '||last_name AS customer_name,
contract, tenure_months, monthly_charges, internet_service, tech_support
FROM customers
WHERE churn='Yes' AND contract='Month-to-month'
AND tenure_months<=12 AND monthly_charges>=75
ORDER BY monthly_charges DESC;

-- Customer risk score
WITH scored AS (
SELECT *,
(CASE WHEN contract='Month-to-month' THEN 3 ELSE 0 END)+
(CASE WHEN tenure_months<=12 THEN 2 ELSE 0 END)+
(CASE WHEN monthly_charges>=85 THEN 2 ELSE 0 END)+
(CASE WHEN tech_support='No' THEN 1 ELSE 0 END)+
(CASE WHEN paperless_billing='Yes' THEN 1 ELSE 0 END) AS risk_score
FROM customers)
SELECT customer_id, first_name||' '||last_name AS customer_name,
risk_score,
CASE WHEN risk_score>=6 THEN 'High Risk'
WHEN risk_score>=3 THEN 'Medium Risk' ELSE 'Low Risk' END AS risk_segment
FROM scored ORDER BY risk_score DESC;