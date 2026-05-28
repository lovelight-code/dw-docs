

select distinct
    image_id,
    call_out_id
from "dw_dev"."landing_tracker"."ln_br_image_call_out"
where image_id is not null
  and call_out_id is not null