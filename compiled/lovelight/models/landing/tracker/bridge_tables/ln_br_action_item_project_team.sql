-- ============================================================
-- Model: ln_br_action_item_project_team
-- Description: Landing-layer bridge view for landing_tracker.field_3032
-- Auto-generated from canonical metadata
-- Canonical: bridge__action_item__project_team
-- Bridge owner: Action Items | target: Project Team
-- Field: field_3032 | label: Project Team
-- ============================================================

select
    id_from as action_item_id,
    id_to as project_team_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_3032