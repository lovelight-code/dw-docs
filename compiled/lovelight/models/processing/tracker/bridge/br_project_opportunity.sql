

select distinct
    project_id,
    opportunity_id
from "dw_dev"."landing_tracker"."ln_br_project_opportunity"
where project_id is not null
  and opportunity_id is not null