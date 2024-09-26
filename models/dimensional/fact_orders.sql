-- -- models/fact/fact_sales.sql

-- with order_data as (
--     select * from {{ ref('stg_orders') }}
-- ),
-- order_line_data as (
--     select * from {{ ref('stg_orders') }}
-- )

-- select
--     o.order_id,
--     o.date,
--     o.time,
--     o.branch_id,
--     o.item_id,
--     o.quantity,
--     o.price,
--     o.quantity * o.price as total_sale_amount,
--     o.payment_method_id,
--     o.dining_option_id,
--     o.customer_id
-- from order_data o
-- join order_line_data ol
-- on o.order_id = ol.order_id


-- models/dimensional/fact_orders.sql

-- models/dimensional/fact_orders.sql

with order_data as (
    select * from {{ ref('stg_orders') }}
)

select
    order_id,
    date,
    time,
    branch_id,
    customer_id,
    payment_method_id,
    dining_option_id
    -- Include other necessary columns here, ensuring there's a comma at the end of each line except the last one
from order_data

