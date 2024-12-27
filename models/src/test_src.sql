{{ config(materialized='table') }}


select * from {{source('source_raw','products')}}
where price >500

