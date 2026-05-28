

select distinct
    service_calls_legacy_id,
    job_id
from "dw_dev"."landing_tracker"."ln_br_service_calls_legacy_job"
where service_calls_legacy_id is not null
  and job_id is not null