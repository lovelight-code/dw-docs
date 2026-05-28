-- ============================================================
-- Model: ln_br_project_wip_item_project_wip
-- Description: Landing-layer bridge view for landing_tracker.field_2954
-- Auto-generated from canonical metadata
-- Canonical: bridge__project_wip_item__project_wip
-- Bridge owner: Project WIP Item | target: Project WIP
-- Field: field_2954 | label: Project Team WIP
-- ============================================================

select
    id_from as project_wip_item_id,
    id_to as project_wip_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2954