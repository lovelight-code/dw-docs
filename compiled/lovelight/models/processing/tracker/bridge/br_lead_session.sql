

select distinct
    lead_id,
    session_id
from "dw_dev"."landing_tracker"."ln_br_lead_session"
where lead_id is not null
  and session_id is not null