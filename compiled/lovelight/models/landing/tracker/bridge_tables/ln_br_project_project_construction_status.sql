-- ============================================================
-- Model: ln_br_project_project_construction_status
-- Description: Landing-layer bridge view for landing_tracker.field_2286
-- Auto-generated from canonical metadata
-- Canonical: bridge__project__project_construction_status
-- Bridge owner: Project | target: Project Construction Statuses
-- Field: field_2286 | label: Construction Status
-- ============================================================

select
    id_from as project_id,
    id_to as project_construction_status_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2286