-- ============================================================
-- Model: ln_br_project_team_user
-- Description: Landing-layer bridge view for landing_tracker.field_2986
-- Auto-generated from canonical metadata
-- Canonical: bridge__project_team__user
-- Bridge owner: Project Team | target: Users
-- Field: field_2986 | label: Members
-- ============================================================

select
    id_from as project_team_id,
    id_to as user_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2986