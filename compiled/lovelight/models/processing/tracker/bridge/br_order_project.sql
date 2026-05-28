

select distinct
    order_id,
    project_id
from "dw_dev"."landing_tracker"."ln_br_order_project"
where order_id is not null
  and project_id is not null