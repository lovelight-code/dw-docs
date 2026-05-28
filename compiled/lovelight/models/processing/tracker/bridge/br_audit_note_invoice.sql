

select distinct
    audit_note_id,
    invoice_id
from "dw_dev"."landing_tracker"."ln_br_audit_note_invoice"
where audit_note_id is not null
  and invoice_id is not null