-- ============================================================
-- Model: ln_br_project_user
-- Description: Landing-layer bridge view for landing_tracker.field_2816
-- Auto-generated from canonical metadata
-- Canonical: bridge__project__user
-- Bridge owner: Project | target: Users
-- Field: field_2816 | label: PC Date updated by
-- ============================================================

select
    id_from as project_id,
    id_to as user_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2816