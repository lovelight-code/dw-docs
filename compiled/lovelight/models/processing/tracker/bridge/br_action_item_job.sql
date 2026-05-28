

select distinct
    action_item_id,
    job_id
from "dw_dev"."landing_tracker"."ln_br_action_item_job"
where action_item_id is not null
  and job_id is not null