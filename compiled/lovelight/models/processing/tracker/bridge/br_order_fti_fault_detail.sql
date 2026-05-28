

select distinct
    order_id,
    fti_fault_detail_id
from "dw_dev"."landing_tracker"."ln_br_order_fti_fault_detail"
where order_id is not null
  and fti_fault_detail_id is not null