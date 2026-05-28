-- ============================================================
-- Model: ln_br_project_product_expert
-- Description: Landing-layer bridge view for landing_tracker.field_2293
-- Auto-generated from canonical metadata
-- Canonical: bridge__project__product_expert
-- Bridge owner: Project | target: Product Experts
-- Field: field_2293 | label: Project Manager
-- ============================================================

select
    id_from as project_id,
    id_to as product_expert_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2293