

select distinct
    invoice_id,
    project_id
from "dw_dev"."landing_tracker"."ln_br_invoice_project"
where invoice_id is not null
  and project_id is not null