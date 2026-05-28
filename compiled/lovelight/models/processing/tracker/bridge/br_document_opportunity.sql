

select distinct
    document_id,
    opportunity_id
from "dw_dev"."landing_tracker"."ln_br_document_opportunity"
where document_id is not null
  and opportunity_id is not null