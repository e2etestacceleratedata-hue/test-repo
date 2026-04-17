{{
  config(
    materialized='view'
  )
}}

with source as (
    select * from {{ source('raw', 'customers') }}
),

renamed as (
    select
        customer_id,
        name,
        email,
        signup_date
    from source
)

select * from renamed
