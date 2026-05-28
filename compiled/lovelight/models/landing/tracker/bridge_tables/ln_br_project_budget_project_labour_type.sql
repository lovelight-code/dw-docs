-- ============================================================
-- Model: ln_br_project_budget_project_labour_type
-- Description: Landing-layer bridge view for landing_tracker.field_2907
-- Auto-generated from canonical metadata
-- Canonical: bridge__project_budget__project_labour_type
-- Bridge owner: Project Budgets | target: Project Labour Types
-- Field: field_2907 | label: Project Labour Type
-- ============================================================

select
    id_from as project_budget_id,
    id_to as project_labour_type_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2907