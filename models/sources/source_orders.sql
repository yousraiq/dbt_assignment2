-- models/sources/source_orders.sql
{{ config(
    materialized='table'
) }}

select
    order_id,
    date,
    time,
    branch_id,
    customer_id,
    payment_method_id,
    dining_option_id
from {{ source('fufu', 'orders') }}
