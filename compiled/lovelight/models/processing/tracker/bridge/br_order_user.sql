

select distinct
    order_id,
    user_id
from "dw_dev"."landing_tracker"."ln_br_order_user"
where order_id is not null
  and user_id is not null