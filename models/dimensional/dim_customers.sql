-- models/dim/dim_customer.sql

with customer_data as (
    select * from {{ ref('stg_customers') }}
)

select
    customer_id,
    name,
    contact_info
from customer_data
