

select distinct
    job_id,
    contact_id
from "dw_dev"."landing_tracker"."ln_br_job_site_contact"
where job_id is not null
  and contact_id is not null