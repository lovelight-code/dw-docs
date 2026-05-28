

select distinct
    call_out_id,
    scheduler_id
from "dw_dev"."landing_tracker"."ln_br_call_out_scheduler"
where call_out_id is not null
  and scheduler_id is not null