-- ============================================================
-- Model: ln_br_project_budget_supplier
-- Description: Landing-layer bridge view for landing_tracker.field_2869
-- Auto-generated from canonical metadata
-- Canonical: bridge__project_budget__supplier
-- Bridge owner: Project Budgets | target: Suppliers
-- Field: field_2869 | label: Supplier
-- ============================================================

select
    id_from as project_budget_id,
    id_to as supplier_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2869