

select distinct
    retention_id,
    user_id
from "dw_dev"."landing_tracker"."ln_br_retention_user"
where retention_id is not null
  and user_id is not null