
{{ config(
    tags=['cnf_data']
) }}

SELECT
    order_id,
    customer_id,
    order_date,
    total_amount,
    -- Add transformation logic here, e.g., formatting dates, calculating discounts, etc.
    CASE
        WHEN total_amount > 100 THEN 'High Value'
        ELSE 'Low Value'
    END AS order_category
FROM {{ ref('orders') }}
