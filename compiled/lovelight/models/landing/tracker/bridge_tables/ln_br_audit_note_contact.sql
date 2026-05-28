-- ============================================================
-- Model: ln_br_audit_note_contact
-- Description: Landing-layer bridge view for landing_tracker.field_1679
-- Auto-generated from canonical metadata
-- Canonical: bridge__audit_note__contact
-- Bridge owner: Audit Notes | target: Contacts
-- Field: field_1679 | label: Contact
-- ============================================================

select
    id_from as audit_note_id,
    id_to as contact_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1679