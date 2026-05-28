

select distinct
    project_id,
    salespeople_id
from "dw_dev"."landing_tracker"."ln_br_project_salespeople"
where project_id is not null
  and salespeople_id is not null