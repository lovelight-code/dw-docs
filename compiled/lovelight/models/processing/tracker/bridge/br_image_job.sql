

select distinct
    image_id,
    job_id
from "dw_dev"."landing_tracker"."ln_br_image_job"
where image_id is not null
  and job_id is not null