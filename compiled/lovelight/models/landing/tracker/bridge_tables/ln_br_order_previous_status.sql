-- ============================================================
-- Model: ln_br_order_previous_status
-- Description: Landing-layer bridge view for landing_tracker.field_443
-- Auto-generated from canonical metadata
-- Canonical: bridge__order__order_status_previous_status
-- Bridge owner: Orders | target: Order Statuses
-- Field: field_443 | label: Previous Status
-- ============================================================

select
    id_from as order_id,
    id_to as order_status_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_443