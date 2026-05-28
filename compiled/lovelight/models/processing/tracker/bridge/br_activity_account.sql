

select distinct
    activity_id,
    account_id
from "dw_dev"."landing_tracker"."ln_br_activity_account"
where activity_id is not null
  and account_id is not null