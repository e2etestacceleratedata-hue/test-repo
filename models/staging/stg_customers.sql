{{
    config(
        materialized='table'
    )
}}

with source as (

    select * from {{ source('raw', 'customers') }}

),

renamed as (

    select
        customer_id,
        trim(name) as name,
        trim(email) as email,
        signup_date

    from source

)

select * from renamed
