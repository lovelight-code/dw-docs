

select distinct
    audit_note_id,
    job_id
from "dw_dev"."landing_tracker"."ln_br_audit_note_job"
where audit_note_id is not null
  and job_id is not null