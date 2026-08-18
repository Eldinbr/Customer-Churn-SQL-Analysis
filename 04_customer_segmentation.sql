-- Customer value segmentation
SELECT CASE
WHEN total_charges<1000 THEN 'Low Value'
WHEN total_charges<3000 THEN 'Medium Value'
ELSE 'High Value' END AS customer_value_segment,
COUNT(*) AS customers,
ROUND(AVG(monthly_charges),2) AS avg_monthly_charges,
ROUND(100.0*COUNT(*) FILTER (WHERE churn='Yes')/COUNT(*),2) AS churn_rate_pct
FROM customers GROUP BY customer_value_segment
ORDER BY MIN(total_charges);

-- Churn by technical support
SELECT tech_support, COUNT(*) AS customers,
ROUND(100.0*COUNT(*) FILTER (WHERE churn='Yes')/COUNT(*),2) AS churn_rate_pct
FROM customers GROUP BY tech_support ORDER BY churn_rate_pct DESC;

-- Churn by senior citizen status
SELECT senior_citizen, COUNT(*) AS customers,
ROUND(100.0*COUNT(*) FILTER (WHERE churn='Yes')/COUNT(*),2) AS churn_rate_pct
FROM customers GROUP BY senior_citizen ORDER BY churn_rate_pct DESC;