-- ============================================================
-- Model: ln_br_project_group_project_group_type
-- Description: Landing-layer bridge view for landing_tracker.field_2811
-- Auto-generated from canonical metadata
-- Canonical: bridge__project_group__project_group_type
-- Bridge owner: Project Group | target: Project Group Types
-- Field: field_2811 | label: Type
-- ============================================================

select
    id_from as project_group_id,
    id_to as project_group_type_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2811