-- ============================================================
-- Model: ln_br_action_item_project
-- Description: Landing-layer bridge view for landing_tracker.field_3028
-- Auto-generated from canonical metadata
-- Canonical: bridge__action_item__project
-- Bridge owner: Action Items | target: Project
-- Field: field_3028 | label: Project
-- ============================================================

select
    id_from as action_item_id,
    id_to as project_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_3028