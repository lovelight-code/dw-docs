

select distinct
    opportunity_id,
    project_id
from (
    select opportunity_id, project_id from "dw_dev"."processing_tracker"."br_opportunity_project"
    union
    select opportunity_id, project_id from "dw_dev"."processing_tracker"."br_project_opportunity"
)
where opportunity_id is not null
  and project_id is not null