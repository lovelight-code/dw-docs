

select distinct
    account_id,
    salespeople_id
from "dw_dev"."landing_tracker"."ln_br_account_salespeople"
where account_id is not null
  and salespeople_id is not null