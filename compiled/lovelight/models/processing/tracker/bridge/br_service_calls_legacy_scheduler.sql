

select distinct
    service_calls_legacy_id,
    scheduler_id
from "dw_dev"."landing_tracker"."ln_br_service_calls_legacy_scheduler"
where service_calls_legacy_id is not null
  and scheduler_id is not null