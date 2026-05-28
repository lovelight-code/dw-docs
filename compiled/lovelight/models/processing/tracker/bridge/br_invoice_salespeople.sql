

select distinct
    invoice_id,
    salespeople_id
from "dw_dev"."landing_tracker"."ln_br_invoice_salespeople"
where invoice_id is not null
  and salespeople_id is not null