-- ============================================================
-- Model: ln_br_project_wip_project_team
-- Description: Landing-layer bridge view for landing_tracker.field_2948
-- Auto-generated from canonical metadata
-- Canonical: bridge__project_wip__project_team
-- Bridge owner: Project WIP | target: Project Team
-- Field: field_2948 | label: Project Team
-- ============================================================

select
    id_from as project_wip_id,
    id_to as project_team_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2948