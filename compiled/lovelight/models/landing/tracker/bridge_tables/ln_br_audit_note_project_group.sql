-- ============================================================
-- Model: ln_br_audit_note_project_group
-- Description: Landing-layer bridge view for landing_tracker.field_2736
-- Auto-generated from canonical metadata
-- Canonical: bridge__audit_note__project_group
-- Bridge owner: Audit Notes | target: Project Group
-- Field: field_2736 | label: Project Group
-- ============================================================

select
    id_from as audit_note_id,
    id_to as project_group_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2736