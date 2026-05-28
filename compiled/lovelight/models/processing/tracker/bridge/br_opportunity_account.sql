

select distinct
    opportunity_id,
    account_id
from "dw_dev"."landing_tracker"."ln_br_opportunity_account"
where opportunity_id is not null
  and account_id is not null