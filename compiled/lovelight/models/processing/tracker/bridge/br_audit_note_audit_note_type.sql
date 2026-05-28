

select distinct
    audit_note_id,
    audit_note_type_id
from "dw_dev"."landing_tracker"."ln_br_audit_note_audit_note_type"
where audit_note_id is not null
  and audit_note_type_id is not null