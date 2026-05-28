-- ============================================================
-- Model: ln_br_project_group_user
-- Description: Landing-layer bridge view for landing_tracker.field_2839
-- Auto-generated from canonical metadata
-- Canonical: bridge__project_group__user
-- Bridge owner: Project Group | target: Users
-- Field: field_2839 | label: Created By
-- ============================================================

select
    id_from as project_group_id,
    id_to as user_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2839