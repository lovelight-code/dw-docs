

select distinct
    order_id,
    session_id
from "dw_dev"."landing_tracker"."ln_br_order_session"
where order_id is not null
  and session_id is not null