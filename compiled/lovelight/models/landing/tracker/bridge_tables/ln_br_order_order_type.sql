-- ============================================================
-- Model: ln_br_order_order_type
-- Description: Landing-layer bridge view for landing_tracker.field_323
-- Auto-generated from canonical metadata
-- Canonical: bridge__order__order_type
-- Bridge owner: Orders | target: Order Types
-- Field: field_323 | label: Order Type
-- ============================================================

select
    id_from as order_id,
    id_to as order_type_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_323