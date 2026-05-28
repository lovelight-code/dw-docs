

select distinct
    service_calls_legacy_id,
    installer_id
from "dw_dev"."landing_tracker"."ln_br_service_calls_legacy_installer"
where service_calls_legacy_id is not null
  and installer_id is not null