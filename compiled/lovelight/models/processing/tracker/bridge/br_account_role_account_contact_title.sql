

select distinct
    account_role_id,
    account_contact_title_id
from "dw_dev"."landing_tracker"."ln_br_account_role_account_contact_title"
where account_role_id is not null
  and account_contact_title_id is not null