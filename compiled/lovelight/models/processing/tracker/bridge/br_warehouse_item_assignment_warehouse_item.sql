

select distinct
    warehouse_item_assignment_id,
    warehouse_item_id
from "dw_dev"."landing_tracker"."ln_br_warehouse_item_assignment_warehouse_item"
where warehouse_item_assignment_id is not null
  and warehouse_item_id is not null