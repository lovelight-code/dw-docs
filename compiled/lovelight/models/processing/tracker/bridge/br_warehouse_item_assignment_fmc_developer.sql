

select distinct
    warehouse_item_assignment_id,
    fmc_developer_id
from "dw_dev"."landing_tracker"."ln_br_warehouse_item_assignment_fmc_developer"
where warehouse_item_assignment_id is not null
  and fmc_developer_id is not null