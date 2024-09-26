-- models/staging/stg_menu_items.sql

with source as (
    select * from {{ source('fufu', 'menu_item') }}  -- Reference 'fufu' source and 'menu_item' table
)

select
    item_id,
    item_name,
    category,
    price,
    branch_availability
from source
