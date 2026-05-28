

select distinct
    document_id,
    issue_id
from "dw_dev"."landing_tracker"."ln_br_document_issue"
where document_id is not null
  and issue_id is not null