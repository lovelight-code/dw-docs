-- ============================================================
-- Model: ln_br_state_division_state
-- Description: Landing-layer bridge view for landing_tracker.field_1572
-- Auto-generated from canonical metadata
-- Canonical: bridge__state_division__state
-- Bridge owner: State Divisions | target: States
-- Field: field_1572 | label: States
-- ============================================================

select
    id_from as state_division_id,
    id_to as state_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1572