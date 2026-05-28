

select distinct
    call_out_id,
    fti_fault_type_id
from "dw_dev"."landing_tracker"."ln_br_call_out_fti_fault_type"
where call_out_id is not null
  and fti_fault_type_id is not null