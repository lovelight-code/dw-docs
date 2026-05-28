

select distinct
    call_out_id,
    supplier_id
from "dw_dev"."landing_tracker"."ln_br_call_out_supplier"
where call_out_id is not null
  and supplier_id is not null