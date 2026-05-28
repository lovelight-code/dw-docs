

select distinct
    order_id,
    supplier_id
from "dw_dev"."landing_tracker"."ln_br_order_supplier"
where order_id is not null
  and supplier_id is not null