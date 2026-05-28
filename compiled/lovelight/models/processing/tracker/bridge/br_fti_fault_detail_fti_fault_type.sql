

select distinct
    fti_fault_detail_id,
    fti_fault_type_id
from "dw_dev"."landing_tracker"."ln_br_fti_fault_detail_fti_fault_type"
where fti_fault_detail_id is not null
  and fti_fault_type_id is not null