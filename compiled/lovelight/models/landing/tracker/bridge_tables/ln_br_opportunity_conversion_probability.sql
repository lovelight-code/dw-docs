-- ============================================================
-- Model: ln_br_opportunity_conversion_probability
-- Description: Landing-layer bridge view for landing_tracker.field_1854
-- Auto-generated from canonical metadata
-- Canonical: bridge__opportunity__conversion_probability
-- Bridge owner: Opportunities | target: Conversion Probabilities
-- Field: field_1854 | label: Likelihood
-- ============================================================

select
    id_from as opportunity_id,
    id_to as conversion_probability_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1854