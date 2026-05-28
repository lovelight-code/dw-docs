

select distinct
    invoice_id,
    job_status_id
from "dw_dev"."landing_tracker"."ln_br_invoice_job_status"
where invoice_id is not null
  and job_status_id is not null