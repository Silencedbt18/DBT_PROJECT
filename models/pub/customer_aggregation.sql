
-- models/pub/customer_aggregation.sql
{{ config(
    tags=['pub_data']
) }}

SELECT
    first_name,
    COUNT(customer_id) AS total_customers
FROM {{ ref('customers_transformed') }}
GROUP BY first_name


