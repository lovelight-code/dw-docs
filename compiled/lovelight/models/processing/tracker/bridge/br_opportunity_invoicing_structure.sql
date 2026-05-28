

select distinct
    opportunity_id,
    invoicing_structure_id
from "dw_dev"."landing_tracker"."ln_br_opportunity_invoicing_structure"
where opportunity_id is not null
  and invoicing_structure_id is not null