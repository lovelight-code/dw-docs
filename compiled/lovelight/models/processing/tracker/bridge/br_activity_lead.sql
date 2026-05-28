

select distinct
    activity_id,
    lead_id
from "dw_dev"."landing_tracker"."ln_br_activity_lead"
where activity_id is not null
  and lead_id is not null