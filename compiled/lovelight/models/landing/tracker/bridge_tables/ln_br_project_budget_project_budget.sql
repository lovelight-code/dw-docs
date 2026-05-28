-- ============================================================
-- Model: ln_br_project_budget_project_budget
-- Description: Landing-layer bridge view for landing_tracker.field_2909
-- Auto-generated from canonical metadata
-- Canonical: bridge__project_budget__project_budget
-- Bridge owner: Project Budgets | target: Project Budgets
-- Field: field_2909 | label: Related Labour Budgets
-- ============================================================

select
    id_from as project_budget_id,
    id_to as related_labour_budget_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2909