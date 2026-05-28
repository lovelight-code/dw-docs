

select distinct
    account_id,
    contact_id
from "dw_dev"."landing_tracker"."ln_br_account_contact"
where account_id is not null
  and contact_id is not null