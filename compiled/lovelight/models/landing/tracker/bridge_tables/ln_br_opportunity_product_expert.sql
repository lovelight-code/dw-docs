-- ============================================================
-- Model: ln_br_opportunity_product_expert
-- Description: Landing-layer bridge view for landing_tracker.field_2141
-- Auto-generated from canonical metadata
-- Canonical: bridge__opportunity__product_expert
-- Bridge owner: Opportunities | target: Product Experts
-- Field: field_2141 | label: Project Manager
-- ============================================================

select
    id_from as opportunity_id,
    id_to as product_expert_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2141