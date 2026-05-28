

select distinct
    image_id,
    session_id
from "dw_dev"."landing_tracker"."ln_br_image_session"
where image_id is not null
  and session_id is not null