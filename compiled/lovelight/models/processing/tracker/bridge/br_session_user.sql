

select distinct
    session_id,
    user_id
from "dw_dev"."landing_tracker"."ln_br_session_user"
where session_id is not null
  and user_id is not null