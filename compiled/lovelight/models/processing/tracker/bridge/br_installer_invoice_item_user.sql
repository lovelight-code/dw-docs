

select distinct
    installer_invoice_item_id,
    user_id
from "dw_dev"."landing_tracker"."ln_br_installer_invoice_item_user"
where installer_invoice_item_id is not null
  and user_id is not null