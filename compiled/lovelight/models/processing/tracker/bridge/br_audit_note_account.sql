

select distinct
    audit_note_id,
    account_id
from "dw_dev"."landing_tracker"."ln_br_audit_note_account"
where audit_note_id is not null
  and account_id is not null