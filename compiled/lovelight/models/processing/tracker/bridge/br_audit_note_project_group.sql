

select distinct
    audit_note_id,
    project_group_id
from "dw_dev"."landing_tracker"."ln_br_audit_note_project_group"
where audit_note_id is not null
  and project_group_id is not null