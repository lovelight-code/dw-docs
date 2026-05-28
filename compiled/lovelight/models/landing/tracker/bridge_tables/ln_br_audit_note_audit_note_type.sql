-- ============================================================
-- Model: ln_br_audit_note_audit_note_type
-- Description: Landing-layer bridge view for landing_tracker.field_1659
-- Auto-generated from canonical metadata
-- Canonical: bridge__audit_note__audit_note_type
-- Bridge owner: Audit Notes | target: Audit Note Types
-- Field: field_1659 | label: Type
-- ============================================================

select
    id_from as audit_note_id,
    id_to as audit_note_type_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1659