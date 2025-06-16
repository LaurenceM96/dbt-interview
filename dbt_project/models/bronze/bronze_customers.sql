{{
  config(
    materialized='table'
  )
}}

select
    id as customer_id,
    first_name,
    last_name,
    cast(signup_date as date) as signup_date,
    country as country_code
from
    read_csv_auto('data/raw_customers.csv')