

select distinct
    issue_id,
    project_id
from "dw_dev"."landing_tracker"."ln_br_issue_project"
where issue_id is not null
  and project_id is not null