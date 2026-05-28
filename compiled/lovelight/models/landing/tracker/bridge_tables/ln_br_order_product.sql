-- ============================================================
-- Model: ln_br_order_product
-- Description: Landing-layer bridge view for landing_tracker.field_11
-- Auto-generated from canonical metadata
-- Canonical: bridge__order__product
-- Bridge owner: Orders | target: Products
-- Field: field_11 | label: Products
-- ============================================================

select
    id_from as order_id,
    id_to as product_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_11