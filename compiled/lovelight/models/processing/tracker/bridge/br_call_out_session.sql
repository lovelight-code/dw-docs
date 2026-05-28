

select distinct
    call_out_id,
    session_id
from "dw_dev"."landing_tracker"."ln_br_call_out_session"
where call_out_id is not null
  and session_id is not null