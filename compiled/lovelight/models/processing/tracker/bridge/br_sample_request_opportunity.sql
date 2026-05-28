

select distinct
    sample_request_id,
    opportunity_id
from "dw_dev"."landing_tracker"."ln_br_sample_request_opportunity"
where sample_request_id is not null
  and opportunity_id is not null