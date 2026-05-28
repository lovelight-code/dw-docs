

select distinct
    retention_id,
    invoice_id
from "dw_dev"."landing_tracker"."ln_br_retention_invoice"
where retention_id is not null
  and invoice_id is not null