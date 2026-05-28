

select distinct
    opportunity_id,
    lead_id
from "dw_dev"."landing_tracker"."ln_br_opportunity_lead"
where opportunity_id is not null
  and lead_id is not null