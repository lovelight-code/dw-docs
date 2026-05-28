

select distinct
    account_id,
    state_id
from "dw_dev"."landing_tracker"."ln_br_account_state"
where account_id is not null
  and state_id is not null