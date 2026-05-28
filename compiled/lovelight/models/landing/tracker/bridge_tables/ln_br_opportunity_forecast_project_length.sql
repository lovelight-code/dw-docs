-- ============================================================
-- Model: ln_br_opportunity_forecast_project_length
-- Description: Landing-layer bridge view for landing_tracker.field_1879
-- Auto-generated from canonical metadata
-- Canonical: bridge__opportunity__forecast_project_length
-- Bridge owner: Opportunities | target: Forecast Project Lengths
-- Field: field_1879 | label: Project Duration
-- ============================================================

select
    id_from as opportunity_id,
    id_to as forecast_project_length_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1879