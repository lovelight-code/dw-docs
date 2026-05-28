

select distinct
    lead_id,
    account_id
from "dw_dev"."landing_tracker"."ln_br_lead_account_dup"
where lead_id is not null
  and account_id is not null