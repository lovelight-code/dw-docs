

select distinct
    activity_id,
    contact_id
from "dw_dev"."landing_tracker"."ln_br_activity_contact"
where activity_id is not null
  and contact_id is not null