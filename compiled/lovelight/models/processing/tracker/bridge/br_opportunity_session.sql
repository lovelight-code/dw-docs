

select distinct
    opportunity_id,
    session_id
from "dw_dev"."landing_tracker"."ln_br_opportunity_session"
where opportunity_id is not null
  and session_id is not null