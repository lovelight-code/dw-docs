

select distinct
    audit_note_id,
    lead_id
from "dw_dev"."landing_tracker"."ln_br_audit_note_lead"
where audit_note_id is not null
  and lead_id is not null