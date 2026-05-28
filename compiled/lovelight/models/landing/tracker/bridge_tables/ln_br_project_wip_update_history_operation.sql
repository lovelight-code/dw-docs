-- ============================================================
-- Model: ln_br_project_wip_update_history_operation
-- Description: Landing-layer bridge view for landing_tracker.field_2993
-- Auto-generated from canonical metadata
-- Canonical: bridge__project_wip_update_history__operation
-- Bridge owner: Project WIP Update History | target: Operations
-- Field: field_2993 | label: Operations Connection
-- ============================================================

select
    id_from as project_wip_update_history_id,
    id_to as operation_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2993