

select distinct
    data_capture_id,
    user_id
from "dw_dev"."landing_tracker"."ln_br_data_capture_user"
where data_capture_id is not null
  and user_id is not null