-- ============================================================
-- Model: ln_br_call_out_state_division
-- Description: Landing-layer bridge view for landing_tracker.field_1577
-- Auto-generated from canonical metadata
-- Canonical: bridge__call_out__state_division
-- Bridge owner: Call Outs | target: State Divisions
-- Field: field_1577 | label: State Division
-- ============================================================

select
    id_from as call_out_id,
    id_to as state_division_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1577