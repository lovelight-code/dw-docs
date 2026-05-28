

select distinct
    invoice_id,
    state_division_id
from "dw_dev"."landing_tracker"."ln_br_invoice_state_division"
where invoice_id is not null
  and state_division_id is not null