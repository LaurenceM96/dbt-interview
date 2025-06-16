{{
  config(
    materialized='table'
  )
}}

select
    order_id,
    customer_id,
    cast(order_date as date) as order_date,
    amount
from
    read_csv_auto('data/raw_orders.csv')