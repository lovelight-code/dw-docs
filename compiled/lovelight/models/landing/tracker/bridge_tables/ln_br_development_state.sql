-- ============================================================
-- Model: ln_br_development_state
-- Description: Landing-layer bridge view for landing_tracker.field_1558
-- Auto-generated from canonical metadata
-- Canonical: bridge__development__state
-- Bridge owner: Developments | target: States
-- Field: field_1558 | label: State Connection
-- ============================================================

select
    id_from as development_id,
    id_to as state_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1558