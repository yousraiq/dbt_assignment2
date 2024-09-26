with menu_item_data as (
    select * from {{ ref('stg_menu_items') }}
)

select
    item_id,
    item_name,
    category,
    price,
    branch_availability
from menu_item_data
