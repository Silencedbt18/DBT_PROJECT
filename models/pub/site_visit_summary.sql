
{{ config(
    tags=['pub_data']
) }}

SELECT
    visit_date_cleaned,
    COUNT(visit_id) AS total_visits,
    SUM(page_views) AS total_page_views
FROM {{ ref('site_visits_transformed') }}
GROUP BY visit_date_cleaned
