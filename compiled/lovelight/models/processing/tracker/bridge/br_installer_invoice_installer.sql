

select distinct
    installer_invoice_id,
    installer_id
from "dw_dev"."landing_tracker"."ln_br_installer_invoice_installer"
where installer_invoice_id is not null
  and installer_id is not null