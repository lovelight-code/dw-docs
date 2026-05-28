

select distinct
    invoice_id,
    user_id
from "dw_dev"."landing_tracker"."ln_br_invoice_user"
where invoice_id is not null
  and user_id is not null