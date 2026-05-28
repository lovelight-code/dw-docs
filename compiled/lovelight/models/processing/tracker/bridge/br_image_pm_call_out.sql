

select distinct
    image_id,
    pm_call_out_id
from "dw_dev"."landing_tracker"."ln_br_image_pm_call_out"
where image_id is not null
  and pm_call_out_id is not null