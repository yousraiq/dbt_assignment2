with branch_data as (
    select * from {{ ref('stg_branch') }}
)

select
    branch_id,
    branch_name,
    location
    -- If you want to include 'manager', uncomment the line below
    -- manager
from branch_data
