

select distinct
    pm_call_out_id,
    activity_id
from "dw_dev"."landing_tracker"."ln_br_pm_call_out_activity"
where pm_call_out_id is not null
  and activity_id is not null