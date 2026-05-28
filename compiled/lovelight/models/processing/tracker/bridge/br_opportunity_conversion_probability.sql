

select distinct
    opportunity_id,
    conversion_probability_id
from "dw_dev"."landing_tracker"."ln_br_opportunity_conversion_probability"
where opportunity_id is not null
  and conversion_probability_id is not null