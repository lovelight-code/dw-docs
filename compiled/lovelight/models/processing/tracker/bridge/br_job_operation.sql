

select distinct
    job_id,
    operation_id
from "dw_dev"."landing_tracker"."ln_br_job_operation"
where job_id is not null
  and operation_id is not null