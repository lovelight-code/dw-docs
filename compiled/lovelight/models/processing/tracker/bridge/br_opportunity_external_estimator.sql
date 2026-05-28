

select distinct
    opportunity_id,
    external_estimator_id
from "dw_dev"."landing_tracker"."ln_br_opportunity_external_estimator"
where opportunity_id is not null
  and external_estimator_id is not null