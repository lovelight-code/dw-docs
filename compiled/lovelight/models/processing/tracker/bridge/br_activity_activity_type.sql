

select distinct
    activity_id,
    activity_type_id
from "dw_dev"."landing_tracker"."ln_br_activity_activity_type"
where activity_id is not null
  and activity_type_id is not null