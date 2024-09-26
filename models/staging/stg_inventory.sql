-- models/staging/stg_inventory.sql

with source as (
    select * from {{ source('fufu', 'inventory') }}  -- Reference 'fufu' source and 'inventory' table
)

select
    inventory_id,
    item_id,
    branch_id,
    stock_level,
    last_restocked
from source
