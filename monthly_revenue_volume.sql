
-- Monthly Revenue and Order Volume Analysis

SELECT 
    EXTRACT(YEAR FROM InvoiceDate) AS year,
    EXTRACT(MONTH FROM InvoiceDate) AS month,
    SUM(Quantity * UnitPrice) AS monthly_revenue,
    COUNT(DISTINCT InvoiceNo) AS monthly_order_volume
FROM online_sales
WHERE InvoiceDate BETWEEN '2020-01-01' AND '2020-12-31'
GROUP BY year, month
ORDER BY year, month;
