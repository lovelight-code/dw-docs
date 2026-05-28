

select distinct
    service_calls_legacy_id,
    state_division_id
from "dw_dev"."landing_tracker"."ln_br_service_calls_legacy_state_division"
where service_calls_legacy_id is not null
  and state_division_id is not null