

select distinct
    stakeholder_id,
    session_id
from "dw_dev"."landing_tracker"."ln_br_stakeholder_session"
where stakeholder_id is not null
  and session_id is not null