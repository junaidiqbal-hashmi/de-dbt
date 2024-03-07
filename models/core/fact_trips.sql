{{
    config(
        materialized='table'
    )
}}

with green_tripdata as (
    select *,
        'Green' as service_type
    from {{ ref('stg_green_tripdata') }}
),
yellow_tripdata as (
    select *,
        'Yellow' as service_type
)