

select distinct
    account_role_id,
    account_id
from "dw_dev"."landing_tracker"."ln_br_account_role_account"
where account_role_id is not null
  and account_id is not null