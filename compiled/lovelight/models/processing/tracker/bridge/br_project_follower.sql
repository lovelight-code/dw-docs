

select distinct
    project_id,
    operation_id
from "dw_dev"."landing_tracker"."ln_br_project_follower"
where project_id is not null
  and operation_id is not null