-- ============================================================
-- Model: ln_br_reception_survey_staff
-- Description: Landing-layer bridge view for landing_tracker.field_2439
-- Auto-generated from canonical metadata
-- Canonical: bridge__reception_survey__staff
-- Bridge owner: Reception Survey | target: Staff
-- Field: field_2439 | label: Who Answered?
-- ============================================================

select
    id_from as reception_survey_id,
    id_to as staff_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2439