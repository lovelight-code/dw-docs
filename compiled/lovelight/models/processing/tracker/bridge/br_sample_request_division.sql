

select distinct
    sample_request_id,
    division_id
from "dw_dev"."landing_tracker"."ln_br_sample_request_division"
where sample_request_id is not null
  and division_id is not null