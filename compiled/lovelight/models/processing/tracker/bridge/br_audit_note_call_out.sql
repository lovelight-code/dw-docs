

select distinct
    audit_note_id,
    call_out_id
from "dw_dev"."landing_tracker"."ln_br_audit_note_call_out"
where audit_note_id is not null
  and call_out_id is not null