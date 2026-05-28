

select distinct
    document_id,
    pm_call_out_id
from "dw_dev"."landing_tracker"."ln_br_document_pm_call_out"
where document_id is not null
  and pm_call_out_id is not null