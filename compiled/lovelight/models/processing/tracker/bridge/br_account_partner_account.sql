

select distinct
    account_partner_id,
    account_id
from "dw_dev"."landing_tracker"."ln_br_account_partner_account"
where account_partner_id is not null
  and account_id is not null