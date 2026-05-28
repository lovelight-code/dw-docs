-- ============================================================
-- Model: ln_br_project_group_project
-- Description: Landing-layer bridge view for landing_tracker.field_2601
-- Auto-generated from canonical metadata
-- Canonical: bridge__project_group__project
-- Bridge owner: Project Group | target: Project
-- Field: field_2601 | label: Project
-- ============================================================

select
    id_from as project_group_id,
    id_to as project_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2601