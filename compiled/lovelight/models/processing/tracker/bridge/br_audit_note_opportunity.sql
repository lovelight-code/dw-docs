

select distinct
    audit_note_id,
    opportunity_id
from "dw_dev"."landing_tracker"."ln_br_audit_note_opportunity"
where audit_note_id is not null
  and opportunity_id is not null