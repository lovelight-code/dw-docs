

select distinct
    document_id,
    job_id
from "dw_dev"."landing_tracker"."ln_br_document_job"
where document_id is not null
  and job_id is not null