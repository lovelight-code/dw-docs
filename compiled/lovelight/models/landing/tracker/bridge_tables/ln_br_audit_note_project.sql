-- ============================================================
-- Model: ln_br_audit_note_project
-- Description: Landing-layer bridge view for landing_tracker.field_2285
-- Auto-generated from canonical metadata
-- Canonical: bridge__audit_note__project
-- Bridge owner: Audit Notes | target: Project
-- Field: field_2285 | label: Project
-- ============================================================

select
    id_from as audit_note_id,
    id_to as project_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2285