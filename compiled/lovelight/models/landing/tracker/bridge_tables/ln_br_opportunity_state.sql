-- ============================================================
-- Model: ln_br_opportunity_state
-- Description: Landing-layer bridge view for landing_tracker.field_1834
-- Auto-generated from canonical metadata
-- Canonical: bridge__opportunity__state
-- Bridge owner: Opportunities | target: States
-- Field: field_1834 | label: State
-- ============================================================

select
    id_from as opportunity_id,
    id_to as state_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1834