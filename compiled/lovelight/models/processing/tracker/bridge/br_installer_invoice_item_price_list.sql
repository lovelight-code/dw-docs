

select distinct
    installer_invoice_item_id,
    price_list_id
from "dw_dev"."landing_tracker"."ln_br_installer_invoice_item_price_list"
where installer_invoice_item_id is not null
  and price_list_id is not null