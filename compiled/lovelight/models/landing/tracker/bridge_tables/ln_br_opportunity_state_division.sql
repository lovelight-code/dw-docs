-- ============================================================
-- Model: ln_br_opportunity_state_division
-- Description: Landing-layer bridge view for landing_tracker.field_1961
-- Auto-generated from canonical metadata
-- Canonical: bridge__opportunity__state_division
-- Bridge owner: Opportunities | target: State Divisions
-- Field: field_1961 | label: State Division
-- ============================================================

select
    id_from as opportunity_id,
    id_to as state_division_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1961