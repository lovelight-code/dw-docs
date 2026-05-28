-- ============================================================
-- Model: ln_br_project_wip_update_history_project
-- Description: Landing-layer bridge view for landing_tracker.field_2990
-- Auto-generated from canonical metadata
-- Canonical: bridge__project_wip_update_history__project
-- Bridge owner: Project WIP Update History | target: Project
-- Field: field_2990 | label: Project
-- ============================================================

select
    id_from as project_wip_update_history_id,
    id_to as project_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2990