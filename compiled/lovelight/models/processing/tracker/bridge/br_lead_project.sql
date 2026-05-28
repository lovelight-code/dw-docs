

select distinct
    lead_id,
    project_id
from "dw_dev"."landing_tracker"."ln_br_lead_project"
where lead_id is not null
  and project_id is not null