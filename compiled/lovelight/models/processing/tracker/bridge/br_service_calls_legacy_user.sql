

select distinct
    service_calls_legacy_id,
    user_id
from "dw_dev"."landing_tracker"."ln_br_service_calls_legacy_user"
where service_calls_legacy_id is not null
  and user_id is not null