-- ============================================================
-- Model: ln_br_audit_note_activity
-- Description: Landing-layer bridge view for landing_tracker.field_1684
-- Auto-generated from canonical metadata
-- Canonical: bridge__audit_note__activity
-- Bridge owner: Audit Notes | target: Activities
-- Field: field_1684 | label: Activity
-- ============================================================

select
    id_from as audit_note_id,
    id_to as activity_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1684