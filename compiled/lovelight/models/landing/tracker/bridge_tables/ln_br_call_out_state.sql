-- ============================================================
-- Model: ln_br_call_out_state
-- Description: Landing-layer bridge view for landing_tracker.field_2224
-- Auto-generated from canonical metadata
-- Canonical: bridge__call_out__state
-- Bridge owner: Call Outs | target: States
-- Field: field_2224 | label: State Connection
-- ============================================================

select
    id_from as call_out_id,
    id_to as state_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2224