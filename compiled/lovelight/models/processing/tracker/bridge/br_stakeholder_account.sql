

select distinct
    stakeholder_id,
    account_id
from "dw_dev"."landing_tracker"."ln_br_stakeholder_account"
where stakeholder_id is not null
  and account_id is not null