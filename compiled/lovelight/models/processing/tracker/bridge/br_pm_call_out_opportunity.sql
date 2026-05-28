

select distinct
    pm_call_out_id,
    opportunity_id
from "dw_dev"."landing_tracker"."ln_br_pm_call_out_opportunity"
where pm_call_out_id is not null
  and opportunity_id is not null