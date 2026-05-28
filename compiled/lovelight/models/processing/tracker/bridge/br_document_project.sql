

select distinct
    document_id,
    project_id
from "dw_dev"."landing_tracker"."ln_br_document_project"
where document_id is not null
  and project_id is not null