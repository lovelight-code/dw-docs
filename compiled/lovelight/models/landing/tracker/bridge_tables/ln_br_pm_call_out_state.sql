-- ============================================================
-- Model: ln_br_pm_call_out_state
-- Description: Landing-layer bridge view for landing_tracker.field_2350
-- Auto-generated from canonical metadata
-- Canonical: bridge__pm_call_out__state
-- Bridge owner: PM Call Out | target: States
-- Field: field_2350 | label: State
-- ============================================================

select
    id_from as pm_call_out_id,
    id_to as state_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2350