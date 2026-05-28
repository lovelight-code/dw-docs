

select distinct
    lead_id,
    lead_source_id
from "dw_dev"."landing_tracker"."ln_br_lead_lead_source"
where lead_id is not null
  and lead_source_id is not null