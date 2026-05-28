

select distinct
    installer_invoice_item_id,
    call_out_id
from "dw_dev"."landing_tracker"."ln_br_installer_invoice_item_call_out"
where installer_invoice_item_id is not null
  and call_out_id is not null