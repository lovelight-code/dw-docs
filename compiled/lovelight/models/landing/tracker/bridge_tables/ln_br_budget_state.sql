-- ============================================================
-- Model: ln_br_budget_state
-- Description: Landing-layer bridge view for landing_tracker.field_2029
-- Auto-generated from canonical metadata
-- Canonical: bridge__budget__state
-- Bridge owner: Budget | target: States
-- Field: field_2029 | label: State
-- ============================================================

select
    id_from as budget_id,
    id_to as state_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2029