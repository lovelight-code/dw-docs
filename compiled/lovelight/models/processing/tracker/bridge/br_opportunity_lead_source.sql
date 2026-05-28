

select distinct
    opportunity_id,
    lead_source_id
from "dw_dev"."landing_tracker"."ln_br_opportunity_lead_source"
where opportunity_id is not null
  and lead_source_id is not null