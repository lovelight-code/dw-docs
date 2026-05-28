

select distinct
    document_id,
    document_type_id
from "dw_dev"."landing_tracker"."ln_br_document_document_type"
where document_id is not null
  and document_type_id is not null