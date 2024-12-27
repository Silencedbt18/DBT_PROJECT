SELECT
    visit_id,
    customer_id,
    visit_date,
    page_views
FROM {{ source('source_raw', 'site_visits') }}
