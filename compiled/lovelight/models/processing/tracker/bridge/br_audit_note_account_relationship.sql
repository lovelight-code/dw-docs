

select distinct
    audit_note_id,
    account_relationship_id
from "dw_dev"."landing_tracker"."ln_br_audit_note_account_relationship"
where audit_note_id is not null
  and account_relationship_id is not null