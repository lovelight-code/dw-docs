

select distinct
    audit_note_id,
    activity_id
from "dw_dev"."landing_tracker"."ln_br_audit_note_activity"
where audit_note_id is not null
  and activity_id is not null