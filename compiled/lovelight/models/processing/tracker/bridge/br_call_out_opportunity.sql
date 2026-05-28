

select distinct
    call_out_id,
    opportunity_id
from "dw_dev"."landing_tracker"."ln_br_call_out_opportunity"
where call_out_id is not null
  and opportunity_id is not null