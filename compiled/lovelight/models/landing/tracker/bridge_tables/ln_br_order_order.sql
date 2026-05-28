-- ============================================================
-- Model: ln_br_order_order
-- Description: Landing-layer bridge view for landing_tracker.field_320
-- Auto-generated from canonical metadata
-- Canonical: bridge__order__order
-- Bridge owner: Orders | target: Orders
-- Field: field_320 | label: Related Orders
-- ============================================================

select
    id_from as order_id,
    id_to as related_order_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_320