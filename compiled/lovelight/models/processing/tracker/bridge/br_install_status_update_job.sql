

select distinct
    install_status_update_id,
    job_id
from "dw_dev"."landing_tracker"."ln_br_install_status_update_job"
where install_status_update_id is not null
  and job_id is not null