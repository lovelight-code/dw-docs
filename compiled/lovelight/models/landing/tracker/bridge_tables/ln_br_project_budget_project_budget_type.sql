-- ============================================================
-- Model: ln_br_project_budget_project_budget_type
-- Description: Landing-layer bridge view for landing_tracker.field_2896
-- Auto-generated from canonical metadata
-- Canonical: bridge__project_budget__project_budget_type
-- Bridge owner: Project Budgets | target: Project Budget Type
-- Field: field_2896 | label: Type
-- ============================================================

select
    id_from as project_budget_id,
    id_to as project_budget_type_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2896