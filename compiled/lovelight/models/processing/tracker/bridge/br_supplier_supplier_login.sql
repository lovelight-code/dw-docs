

select distinct
    supplier_id,
    supplier_login_id
from "dw_dev"."landing_tracker"."ln_br_supplier_supplier_login"
where supplier_id is not null
  and supplier_login_id is not null