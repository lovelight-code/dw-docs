

select distinct
    oh_and_s_pre_start_check_id,
    job_id
from "dw_dev"."landing_tracker"."ln_br_oh_and_s_pre_start_check_job"
where oh_and_s_pre_start_check_id is not null
  and job_id is not null