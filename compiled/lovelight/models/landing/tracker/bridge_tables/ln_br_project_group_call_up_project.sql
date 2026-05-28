-- ============================================================
-- Model: ln_br_project_group_call_up_project
-- Description: Landing-layer bridge view for landing_tracker.field_2727
-- Auto-generated from canonical metadata
-- Canonical: bridge__project_group_call_up__project
-- Bridge owner: Project Group Call Up | target: Project
-- Field: field_2727 | label: Project
-- ============================================================

select
    id_from as project_group_call_up_id,
    id_to as project_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2727