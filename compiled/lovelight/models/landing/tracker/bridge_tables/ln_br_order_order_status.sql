-- ============================================================
-- Model: ln_br_order_order_status
-- Description: Landing-layer bridge view for landing_tracker.field_442
-- Auto-generated from canonical metadata
-- Canonical: bridge__order__order_status
-- Bridge owner: Orders | target: Order Statuses
-- Field: field_442 | label: Status
-- ============================================================

select
    id_from as order_id,
    id_to as order_status_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_442