

select distinct
    audit_note_id,
    project_id
from "dw_dev"."landing_tracker"."ln_br_audit_note_project"
where audit_note_id is not null
  and project_id is not null