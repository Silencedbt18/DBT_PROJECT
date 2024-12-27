
SELECT
    sales_rep_id,
    first_name,
    last_name,
    region
FROM {{ source('source_raw', 'sales_rep') }}
