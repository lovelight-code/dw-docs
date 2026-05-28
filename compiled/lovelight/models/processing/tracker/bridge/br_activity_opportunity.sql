

select distinct
    activity_id,
    opportunity_id
from "dw_dev"."landing_tracker"."ln_br_activity_opportunity"
where activity_id is not null
  and opportunity_id is not null