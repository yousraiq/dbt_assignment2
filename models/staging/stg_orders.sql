-- models/staging/stg_orders.sql

with source as (
    select * from {{ source('fufu', 'orders') }}  -- Reference 'fufu' source and 'order' table
)

select
    order_id,
    date,
    time,
    branch_id,
    customer_id,
    payment_method_id,
    dining_option_id
from source
