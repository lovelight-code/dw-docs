

select distinct
    call_out_id,
    project_id
from "dw_dev"."landing_tracker"."ln_br_call_out_project"
where call_out_id is not null
  and project_id is not null