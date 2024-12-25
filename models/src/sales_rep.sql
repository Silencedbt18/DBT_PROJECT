
SELECT
    sales_rep_id,
    first_name,
    last_name,
    region
FROM {{ source('raw', 'sales_rep') }}
