
{{ config(
    tags=['cnf_data']
) }}

SELECT
    product_id,
    product_name,
    category,
    price,
    -- Add any relevant transformations here, e.g., applying a discount
    CASE
        WHEN category = 'Electronics' THEN price * 0.9
        ELSE price
    END AS adjusted_price
FROM {{ ref('products') }}
