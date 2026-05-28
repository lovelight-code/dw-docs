

select distinct
    invoice_id,
    contact_id
from "dw_dev"."landing_tracker"."ln_br_invoice_contact"
where invoice_id is not null
  and contact_id is not null