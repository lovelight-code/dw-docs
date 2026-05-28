

select distinct
    account_role_id,
    contact_id
from "dw_dev"."landing_tracker"."ln_br_account_role_contact"
where account_role_id is not null
  and contact_id is not null