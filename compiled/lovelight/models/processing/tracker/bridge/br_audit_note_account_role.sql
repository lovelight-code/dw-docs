

select distinct
    audit_note_id,
    account_role_id
from "dw_dev"."landing_tracker"."ln_br_audit_note_account_role"
where audit_note_id is not null
  and account_role_id is not null