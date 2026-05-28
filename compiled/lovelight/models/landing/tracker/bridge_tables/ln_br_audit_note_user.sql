-- ============================================================
-- Model: ln_br_audit_note_user
-- Description: Landing-layer bridge view for landing_tracker.field_2849
-- Auto-generated from canonical metadata
-- Canonical: bridge__audit_note__user
-- Bridge owner: Audit Notes | target: Users
-- Field: field_2849 | label: Created By
-- ============================================================

select
    id_from as audit_note_id,
    id_to as user_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2849