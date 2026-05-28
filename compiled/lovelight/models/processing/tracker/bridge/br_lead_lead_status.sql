

select distinct
    lead_id,
    lead_status_id
from "dw_dev"."landing_tracker"."ln_br_lead_lead_status"
where lead_id is not null
  and lead_status_id is not null