

select distinct
    account_relationship_id,
    account_id
from "dw_dev"."landing_tracker"."ln_br_account_relationship_account"
where account_relationship_id is not null
  and account_id is not null