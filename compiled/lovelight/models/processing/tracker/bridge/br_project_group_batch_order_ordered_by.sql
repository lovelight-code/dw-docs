

select distinct
    project_group_id,
    user_id
from "dw_dev"."landing_tracker"."ln_br_project_group_batch_order_ordered_by"
where project_group_id is not null
  and user_id is not null