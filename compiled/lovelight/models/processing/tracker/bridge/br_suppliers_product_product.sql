

select distinct
    suppliers_product_id,
    product_id
from "dw_dev"."landing_tracker"."ln_br_suppliers_product_product"
where suppliers_product_id is not null
  and product_id is not null