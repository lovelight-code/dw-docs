

select distinct
    project_id,
    account_id
from "dw_dev"."landing_tracker"."ln_br_project_builder"
where project_id is not null
  and account_id is not null