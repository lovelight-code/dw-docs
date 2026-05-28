

select distinct
    job_id,
    installers_legacy_id
from "dw_dev"."landing_tracker"."ln_br_job_installers_legacy"
where job_id is not null
  and installers_legacy_id is not null