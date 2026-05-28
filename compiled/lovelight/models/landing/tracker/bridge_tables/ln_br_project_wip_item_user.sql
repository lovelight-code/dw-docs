-- ============================================================
-- Model: ln_br_project_wip_item_user
-- Description: Landing-layer bridge view for landing_tracker.field_2956
-- Auto-generated from canonical metadata
-- Canonical: bridge__project_wip_item__user
-- Bridge owner: Project WIP Item | target: Users
-- Field: field_2956 | label: Created By
-- ============================================================

select
    id_from as project_wip_item_id,
    id_to as user_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2956