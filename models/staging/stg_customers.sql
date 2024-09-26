-- models/staging/stg_customers.sql

with source as (
    select * from {{ source('fufu', 'customer') }}  -- Updated to reference 'fufu' source and 'customer' table
)

select
    customer_id,
    name,
    contact_info
from source
