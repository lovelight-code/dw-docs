

select distinct
    supplier_login_id,
    supplier_id
from "dw_dev"."landing_tracker"."ln_br_supplier_login_supplier"
where supplier_login_id is not null
  and supplier_id is not null