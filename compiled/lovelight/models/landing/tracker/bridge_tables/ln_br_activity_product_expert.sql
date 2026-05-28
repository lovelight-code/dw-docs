-- ============================================================
-- Model: ln_br_activity_product_expert
-- Description: Landing-layer bridge view for landing_tracker.field_2167
-- Auto-generated from canonical metadata
-- Canonical: bridge__activity__product_expert
-- Bridge owner: Activities | target: Product Experts
-- Field: field_2167 | label: Project Manager
-- ============================================================

select
    id_from as activity_id,
    id_to as product_expert_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2167