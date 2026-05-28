

select distinct
    project_id,
    development_id
from "dw_dev"."landing_tracker"."ln_br_project_development"
where project_id is not null
  and development_id is not null