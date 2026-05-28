

select distinct
    document_id,
    project_group_id
from "dw_dev"."landing_tracker"."ln_br_document_project_group"
where document_id is not null
  and project_group_id is not null