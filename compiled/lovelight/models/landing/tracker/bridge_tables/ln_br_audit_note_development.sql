-- ============================================================
-- Model: ln_br_audit_note_development
-- Description: Landing-layer bridge view for landing_tracker.field_1781
-- Auto-generated from canonical metadata
-- Canonical: bridge__audit_note__development
-- Bridge owner: Audit Notes | target: Developments
-- Field: field_1781 | label: Development
-- ============================================================

select
    id_from as audit_note_id,
    id_to as development_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1781