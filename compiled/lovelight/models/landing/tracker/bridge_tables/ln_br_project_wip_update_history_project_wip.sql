-- ============================================================
-- Model: ln_br_project_wip_update_history_project_wip
-- Description: Landing-layer bridge view for landing_tracker.field_2989
-- Auto-generated from canonical metadata
-- Canonical: bridge__project_wip_update_history__project_wip
-- Bridge owner: Project WIP Update History | target: Project WIP
-- Field: field_2989 | label: Project WIP
-- ============================================================

select
    id_from as project_wip_update_history_id,
    id_to as project_wip_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2989