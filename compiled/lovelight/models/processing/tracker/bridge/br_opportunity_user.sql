

select distinct
    opportunity_id,
    user_id
from "dw_dev"."landing_tracker"."ln_br_opportunity_user"
where opportunity_id is not null
  and user_id is not null