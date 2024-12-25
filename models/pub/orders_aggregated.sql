
{{ config(
    tags=['pub_data']
) }}

SELECT
    order_category,
    COUNT(order_id) AS order_count,
    SUM(total_amount) AS total_sales,
    AVG(total_amount) AS average_order_value
FROM {{ ref('orders_transformed') }}
GROUP BY order_category
