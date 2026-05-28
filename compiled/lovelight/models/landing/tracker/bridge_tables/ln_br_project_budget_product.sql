-- ============================================================
-- Model: ln_br_project_budget_product
-- Description: Landing-layer bridge view for landing_tracker.field_2870
-- Auto-generated from canonical metadata
-- Canonical: bridge__project_budget__product
-- Bridge owner: Project Budgets | target: Products
-- Field: field_2870 | label: Product
-- ============================================================

select
    id_from as project_budget_id,
    id_to as product_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2870