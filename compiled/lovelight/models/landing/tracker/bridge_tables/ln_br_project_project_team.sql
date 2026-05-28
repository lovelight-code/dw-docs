-- ============================================================
-- Model: ln_br_project_project_team
-- Description: Landing-layer bridge view for landing_tracker.field_2931
-- Auto-generated from canonical metadata
-- Canonical: bridge__project__project_team
-- Bridge owner: Project | target: Project Team
-- Field: field_2931 | label: Project Team
-- ============================================================

select
    id_from as project_id,
    id_to as project_team_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2931