

select distinct
    development_id,
    user_id
from "dw_dev"."landing_tracker"."ln_br_development_user"
where development_id is not null
  and user_id is not null