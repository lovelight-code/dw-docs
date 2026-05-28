-- ============================================================
-- Model: ln_br_order_type_detail_order_type
-- Description: Landing-layer bridge view for landing_tracker.field_439
-- Auto-generated from canonical metadata
-- Canonical: bridge__order_type_detail__order_type
-- Bridge owner: Order Type Details | target: Order Types
-- Field: field_439 | label: Order Type
-- ============================================================

select
    id_from as order_type_detail_id,
    id_to as order_type_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_439