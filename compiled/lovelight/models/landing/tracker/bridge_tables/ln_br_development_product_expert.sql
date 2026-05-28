-- ============================================================
-- Model: ln_br_development_product_expert
-- Description: Landing-layer bridge view for landing_tracker.field_2116
-- Auto-generated from canonical metadata
-- Canonical: bridge__development__product_expert
-- Bridge owner: Developments | target: Product Experts
-- Field: field_2116 | label: Project Manager
-- ============================================================

select
    id_from as development_id,
    id_to as product_expert_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2116