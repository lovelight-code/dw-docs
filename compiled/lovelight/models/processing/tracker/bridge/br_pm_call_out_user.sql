

select distinct
    pm_call_out_id,
    user_id
from "dw_dev"."landing_tracker"."ln_br_pm_call_out_user"
where pm_call_out_id is not null
  and user_id is not null