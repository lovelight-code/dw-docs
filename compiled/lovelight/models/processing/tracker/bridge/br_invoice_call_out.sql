

select distinct
    invoice_id,
    call_out_id
from "dw_dev"."landing_tracker"."ln_br_invoice_call_out"
where invoice_id is not null
  and call_out_id is not null