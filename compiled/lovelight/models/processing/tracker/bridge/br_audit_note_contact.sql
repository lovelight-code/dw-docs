

select distinct
    audit_note_id,
    contact_id
from "dw_dev"."landing_tracker"."ln_br_audit_note_contact"
where audit_note_id is not null
  and contact_id is not null