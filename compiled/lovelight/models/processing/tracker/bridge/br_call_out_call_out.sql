

select distinct
    call_out_id,
    copied_from_id
from "dw_dev"."landing_tracker"."ln_br_call_out_call_out"
where call_out_id is not null
  and copied_from_id is not null