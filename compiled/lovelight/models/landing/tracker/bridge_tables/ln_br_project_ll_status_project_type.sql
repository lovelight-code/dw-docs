-- ============================================================
-- Model: ln_br_project_ll_status_project_type
-- Description: Landing-layer bridge view for landing_tracker.field_2800
-- Auto-generated from canonical metadata
-- Canonical: bridge__project_ll_status__project_type
-- Bridge owner: Project LL Statuses | target: Project Types
-- Field: field_2800 | label: Project Types
-- ============================================================

select
    id_from as project_ll_statu_id,
    id_to as project_type_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2800