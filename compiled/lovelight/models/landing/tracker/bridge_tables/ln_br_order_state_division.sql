-- ============================================================
-- Model: ln_br_order_state_division
-- Description: Landing-layer bridge view for landing_tracker.field_1578
-- Auto-generated from canonical metadata
-- Canonical: bridge__order__state_division
-- Bridge owner: Orders | target: State Divisions
-- Field: field_1578 | label: State Division
-- ============================================================

select
    id_from as order_id,
    id_to as state_division_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1578