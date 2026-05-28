-- ============================================================
-- Model: ln_br_order_state
-- Description: Landing-layer bridge view for landing_tracker.field_1561
-- Auto-generated from canonical metadata
-- Canonical: bridge__order__state
-- Bridge owner: Orders | target: States
-- Field: field_1561 | label: State
-- ============================================================

select
    id_from as order_id,
    id_to as state_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1561