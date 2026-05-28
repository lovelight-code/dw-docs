-- ============================================================
-- Model: ln_br_reception_survey_state
-- Description: Landing-layer bridge view for landing_tracker.field_2240
-- Auto-generated from canonical metadata
-- Canonical: bridge__reception_survey__state
-- Bridge owner: Reception Survey | target: States
-- Field: field_2240 | label: State
-- ============================================================

select
    id_from as reception_survey_id,
    id_to as state_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2240