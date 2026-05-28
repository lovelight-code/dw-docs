-- ============================================================
-- Model: ln_br_retention_project
-- Description: Landing-layer bridge view for landing_tracker.field_3081
-- Auto-generated from canonical metadata
-- Canonical: bridge__retention__project
-- Bridge owner: Retention | target: Project
-- Field: field_3081 | label: Project
-- ============================================================

select
    id_from as retention_id,
    id_to as project_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_3081