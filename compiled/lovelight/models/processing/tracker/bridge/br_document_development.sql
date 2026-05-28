

select distinct
    document_id,
    development_id
from "dw_dev"."landing_tracker"."ln_br_document_development"
where document_id is not null
  and development_id is not null