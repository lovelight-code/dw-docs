

select distinct
    order_id,
    fti_fault_type_id
from "dw_dev"."landing_tracker"."ln_br_order_fti_fault_type"
where order_id is not null
  and fti_fault_type_id is not null