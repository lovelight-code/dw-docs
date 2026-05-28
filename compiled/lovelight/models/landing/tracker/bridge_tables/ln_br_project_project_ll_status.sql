-- ============================================================
-- Model: ln_br_project_project_ll_status
-- Description: Landing-layer bridge view for landing_tracker.field_2773
-- Auto-generated from canonical metadata
-- Canonical: bridge__project__project_ll_status
-- Bridge owner: Project | target: Project LL Statuses
-- Field: field_2773 | label: Project Status
-- ============================================================

select
    id_from as project_id,
    id_to as project_ll_status_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2773