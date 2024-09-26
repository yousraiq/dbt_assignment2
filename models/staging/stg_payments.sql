-- models/staging/stg_payments.sql

with source as (
    select * from {{ source('fufu', 'payment_method') }}  -- Reference 'fufu' source and 'payment_method' table
)

select
    payment_method_id,
    payment_type
from source
