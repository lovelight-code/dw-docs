-- ============================================================
-- Model: ln_br_pm_call_out_product_expert
-- Description: Landing-layer bridge view for landing_tracker.field_2166
-- Auto-generated from canonical metadata
-- Canonical: bridge__pm_call_out__product_expert
-- Bridge owner: PM Call Out | target: Product Experts
-- Field: field_2166 | label: Project Manager
-- ============================================================

select
    id_from as pm_call_out_id,
    id_to as product_expert_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2166