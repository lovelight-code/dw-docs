

select distinct
    warehouse_item_assignment_id,
    installer_id
from "dw_dev"."landing_tracker"."ln_br_warehouse_item_assignment_installer"
where warehouse_item_assignment_id is not null
  and installer_id is not null