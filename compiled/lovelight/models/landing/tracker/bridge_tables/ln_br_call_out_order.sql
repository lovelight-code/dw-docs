-- ============================================================
-- Model: ln_br_call_out_order
-- Description: Landing-layer bridge view for landing_tracker.field_954
-- Auto-generated from canonical metadata
-- Canonical: bridge__call_out__order
-- Bridge owner: Call Outs | target: Orders
-- Field: field_954 | label: Orders
-- ============================================================

select
    id_from as call_out_id,
    id_to as order_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_954