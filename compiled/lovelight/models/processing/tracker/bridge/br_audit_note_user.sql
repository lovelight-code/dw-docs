

select distinct
    audit_note_id,
    user_id
from "dw_dev"."landing_tracker"."ln_br_audit_note_user"
where audit_note_id is not null
  and user_id is not null