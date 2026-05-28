

select distinct
    job_id,
    installer_id
from "dw_dev"."landing_tracker"."ln_br_job_measured_by"
where job_id is not null
  and installer_id is not null