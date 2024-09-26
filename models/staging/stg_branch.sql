{{ config(
    materialized='table'
) }}

select
    branch_id,
    branch_name,
    location
from {{ source('fufu', 'branch') }}  -- Ensure this matches your schema and table names
