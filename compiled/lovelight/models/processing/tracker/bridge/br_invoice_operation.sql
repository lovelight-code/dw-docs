

select distinct
    invoice_id,
    operation_id
from "dw_dev"."landing_tracker"."ln_br_invoice_operation"
where invoice_id is not null
  and operation_id is not null