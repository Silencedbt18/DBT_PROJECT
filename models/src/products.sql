
SELECT
    product_id,
    product_name,
    category,
    price
FROM {{ source('source_raw', 'products') }}
