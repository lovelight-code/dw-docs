

select distinct
    document_id,
    call_out_id
from "dw_dev"."landing_tracker"."ln_br_document_call_out"
where document_id is not null
  and call_out_id is not null