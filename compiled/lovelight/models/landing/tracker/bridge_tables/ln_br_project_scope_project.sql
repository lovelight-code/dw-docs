-- ============================================================
-- Model: ln_br_project_scope_project
-- Description: Landing-layer bridge view for landing_tracker.field_2616
-- Auto-generated from canonical metadata
-- Canonical: bridge__project_scope__project
-- Bridge owner: Project Scopes | target: Project
-- Field: field_2616 | label: Project
-- ============================================================

select
    id_from as project_scope_id,
    id_to as project_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2616