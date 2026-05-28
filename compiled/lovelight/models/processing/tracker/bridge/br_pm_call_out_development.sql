

select distinct
    pm_call_out_id,
    development_id
from "dw_dev"."landing_tracker"."ln_br_pm_call_out_development"
where pm_call_out_id is not null
  and development_id is not null