

select distinct
    installer_invoice_item_id,
    installer_invoice_id
from "dw_dev"."landing_tracker"."ln_br_installer_invoice_item_installer_invoice"
where installer_invoice_item_id is not null
  and installer_invoice_id is not null