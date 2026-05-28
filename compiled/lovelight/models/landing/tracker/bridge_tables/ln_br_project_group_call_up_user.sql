-- ============================================================
-- Model: ln_br_project_group_call_up_user
-- Description: Landing-layer bridge view for landing_tracker.field_2719
-- Auto-generated from canonical metadata
-- Canonical: bridge__project_group_call_up__user
-- Bridge owner: Project Group Call Up | target: Users
-- Field: field_2719 | label: Created By
-- ============================================================

select
    id_from as project_group_call_up_id,
    id_to as user_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2719