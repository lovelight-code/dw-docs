-- ============================================================
-- Model: ln_br_opportunity_external_estimator
-- Description: Landing-layer bridge view for landing_tracker.field_2807
-- Auto-generated from canonical metadata
-- Canonical: bridge__opportunity__external_estimator
-- Bridge owner: Opportunities | target: External Estimators
-- Field: field_2807 | label: External Estimator
-- ============================================================

select
    id_from as opportunity_id,
    id_to as external_estimator_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2807