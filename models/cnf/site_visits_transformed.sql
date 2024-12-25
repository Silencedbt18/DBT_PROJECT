
{{ config(
    tags=['cnf_data']
) }}

SELECT
    visit_id,
    customer_id,
    visit_date,
    page_views,
    -- Example transformation: group visits into daily summaries
    DATE(visit_date) AS visit_date_cleaned
FROM {{ ref('site_visits') }}
