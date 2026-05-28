-- ============================================================
-- Model: ln_br_project_wip_update_history_project_ll_status
-- Description: Landing-layer bridge view for landing_tracker.field_2998
-- Auto-generated from canonical metadata
-- Canonical: bridge__project_wip_update_history__project_ll_status
-- Bridge owner: Project WIP Update History | target: Project LL Statuses
-- Field: field_2998 | label: Project LL Status Connection
-- ============================================================

select
    id_from as project_wip_update_history_id,
    id_to as project_ll_status_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2998