-- models/pub/sales_rep_performance.sql
{{ config(
    tags=['pub_data']
) }}

SELECT
    region,
    COUNT(sales_rep_id) AS total_sales_reps,
    CONCAT(first_name, ' ', last_name) AS sales_rep_name
FROM {{ ref('sales_rep_transformed') }}
GROUP BY region, first_name, last_name

