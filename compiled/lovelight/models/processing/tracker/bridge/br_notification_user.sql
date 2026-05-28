

select distinct
    notification_id,
    user_id
from "dw_dev"."landing_tracker"."ln_br_notification_user"
where notification_id is not null
  and user_id is not null