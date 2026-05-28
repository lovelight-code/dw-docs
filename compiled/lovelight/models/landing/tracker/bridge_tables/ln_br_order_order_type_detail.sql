-- ============================================================
-- Model: ln_br_order_order_type_detail
-- Description: Landing-layer bridge view for landing_tracker.field_441
-- Auto-generated from canonical metadata
-- Canonical: bridge__order__order_type_detail
-- Bridge owner: Orders | target: Order Type Details
-- Field: field_441 | label: Order Type Detail
-- ============================================================

select
    id_from as order_id,
    id_to as order_type_detail_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_441