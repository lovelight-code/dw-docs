-- ============================================================
-- Model: ln_br_project_project_type
-- Description: Landing-layer bridge view for landing_tracker.field_2801
-- Auto-generated from canonical metadata
-- Canonical: bridge__project__project_type
-- Bridge owner: Project | target: Project Types
-- Field: field_2801 | label: Billable Entity
-- ============================================================

select
    id_from as project_id,
    id_to as project_type_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2801