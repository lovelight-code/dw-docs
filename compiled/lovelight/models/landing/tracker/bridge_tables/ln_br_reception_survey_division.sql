-- ============================================================
-- Model: ln_br_reception_survey_division
-- Description: Landing-layer bridge view for landing_tracker.field_2241
-- Auto-generated from canonical metadata
-- Canonical: bridge__reception_survey__division
-- Bridge owner: Reception Survey | target: Divisions
-- Field: field_2241 | label: Division
-- ============================================================

select
    id_from as reception_survey_id,
    id_to as division_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2241