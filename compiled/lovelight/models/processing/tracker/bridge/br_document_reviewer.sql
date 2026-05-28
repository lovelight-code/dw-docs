

select distinct
    document_id,
    staff_id
from "dw_dev"."landing_tracker"."ln_br_document_reviewer"
where document_id is not null
  and staff_id is not null