

select distinct
    order_id,
    installer_id
from "dw_dev"."landing_tracker"."ln_br_order_installer"
where order_id is not null
  and installer_id is not null