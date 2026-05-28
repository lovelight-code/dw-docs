

select distinct
    invoice_id,
    job_id
from "dw_dev"."landing_tracker"."ln_br_invoice_job"
where invoice_id is not null
  and job_id is not null