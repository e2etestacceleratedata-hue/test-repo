{{
    config(
        materialized='table'
    )
}}

SELECT
    customer_id,
    TRIM(name) AS name,
    TRIM(email) AS email,
    signup_date

FROM {{ source('raw', 'customers') }}
