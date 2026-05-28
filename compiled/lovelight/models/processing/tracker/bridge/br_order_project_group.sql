

select distinct
    order_id,
    project_group_id
from "dw_dev"."landing_tracker"."ln_br_order_project_group"
where order_id is not null
  and project_group_id is not null