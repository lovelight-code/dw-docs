

select distinct
    budget_id,
    state_id
from "dw_dev"."landing_tracker"."ln_br_budget_state"
where budget_id is not null
  and state_id is not null