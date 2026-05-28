-- ============================================================
-- Model: ln_br_project_budget_project
-- Description: Landing-layer bridge view for landing_tracker.field_2868
-- Auto-generated from canonical metadata
-- Canonical: bridge__project_budget__project
-- Bridge owner: Project Budgets | target: Project
-- Field: field_2868 | label: Project
-- ============================================================

select
    id_from as project_budget_id,
    id_to as project_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2868