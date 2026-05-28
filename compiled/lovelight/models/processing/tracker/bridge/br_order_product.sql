

select distinct
    order_id,
    product_id
from "dw_dev"."landing_tracker"."ln_br_order_product"
where order_id is not null
  and product_id is not null