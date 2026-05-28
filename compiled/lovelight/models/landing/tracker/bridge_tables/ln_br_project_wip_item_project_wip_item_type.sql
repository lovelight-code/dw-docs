-- ============================================================
-- Model: ln_br_project_wip_item_project_wip_item_type
-- Description: Landing-layer bridge view for landing_tracker.field_2965
-- Auto-generated from canonical metadata
-- Canonical: bridge__project_wip_item__project_wip_item_type
-- Bridge owner: Project WIP Item | target: Project WIP Item Types
-- Field: field_2965 | label: Project WIP Item Type
-- ============================================================

select
    id_from as project_wip_item_id,
    id_to as project_wip_item_type_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2965