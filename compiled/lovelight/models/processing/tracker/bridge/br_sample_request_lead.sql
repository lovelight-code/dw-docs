

select distinct
    sample_request_id,
    lead_id
from "dw_dev"."landing_tracker"."ln_br_sample_request_lead"
where sample_request_id is not null
  and lead_id is not null