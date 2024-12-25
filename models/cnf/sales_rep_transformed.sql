
{{ config(
    tags=['cnf_data']
) }}

SELECT
    sales_rep_id,
    first_name,
    last_name,
    region,
    -- Example transformation: concatenate first and last name
    CONCAT(first_name, ' ', last_name) AS full_name
FROM {{ ref('sales_rep') }}
