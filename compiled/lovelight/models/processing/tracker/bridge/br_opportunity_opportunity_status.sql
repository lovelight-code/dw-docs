

select distinct
    opportunity_id,
    opportunity_status_id
from "dw_dev"."landing_tracker"."ln_br_opportunity_opportunity_status"
where opportunity_id is not null
  and opportunity_status_id is not null