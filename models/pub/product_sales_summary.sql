
{{ config(
    tags=['pub_data']
) }}

SELECT
    category,
    COUNT(product_id) AS total_products,
    SUM(adjusted_price) AS total_sales
FROM {{ ref('products_transformed') }}
GROUP BY category
