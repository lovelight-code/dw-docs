

select distinct
    suppliers_product_id,
    supplier_id
from "dw_dev"."landing_tracker"."ln_br_suppliers_product_supplier"
where suppliers_product_id is not null
  and supplier_id is not null