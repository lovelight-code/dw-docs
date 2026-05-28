-- ============================================================
-- Model: ln_br_project_budget_project_allowance_type
-- Description: Landing-layer bridge view for landing_tracker.field_2908
-- Auto-generated from canonical metadata
-- Canonical: bridge__project_budget__project_allowance_type
-- Bridge owner: Project Budgets | target: Project Allowance Types
-- Field: field_2908 | label: Project Allowance Type
-- ============================================================

select
    id_from as project_budget_id,
    id_to as project_allowance_type_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2908