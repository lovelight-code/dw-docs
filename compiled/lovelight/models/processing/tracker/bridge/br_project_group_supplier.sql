

select distinct
    project_group_id,
    supplier_id
from "dw_dev"."landing_tracker"."ln_br_project_group_supplier"
where project_group_id is not null
  and supplier_id is not null