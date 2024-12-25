-- models/cnf/customers_transformed.sql
{{ config(
    tags=['cnf_data']
) }}

SELECT
    customer_id,
    first_name,
    last_name,
    email
FROM {{ ref('customers') }}

