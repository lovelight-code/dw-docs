

select distinct
    sample_request_id,
    user_id
from "dw_dev"."landing_tracker"."ln_br_sample_request_user"
where sample_request_id is not null
  and user_id is not null