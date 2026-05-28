

select distinct
    opportunity_id,
    development_id
from "dw_dev"."landing_tracker"."ln_br_opportunity_development"
where opportunity_id is not null
  and development_id is not null