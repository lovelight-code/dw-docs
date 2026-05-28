

select distinct
    retention_id,
    project_id
from "dw_dev"."landing_tracker"."ln_br_retention_project"
where retention_id is not null
  and project_id is not null