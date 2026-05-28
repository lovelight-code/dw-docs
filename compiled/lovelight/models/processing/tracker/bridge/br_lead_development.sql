

select distinct
    lead_id,
    development_id
from "dw_dev"."landing_tracker"."ln_br_lead_development"
where lead_id is not null
  and development_id is not null