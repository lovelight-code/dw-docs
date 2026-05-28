

select distinct
    opportunity_id,
    project_id
from "dw_dev"."landing_tracker"."ln_br_opportunity_project"
where opportunity_id is not null
  and project_id is not null