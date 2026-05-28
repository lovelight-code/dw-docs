

select distinct
    audit_note_id,
    development_id
from "dw_dev"."landing_tracker"."ln_br_audit_note_development"
where audit_note_id is not null
  and development_id is not null