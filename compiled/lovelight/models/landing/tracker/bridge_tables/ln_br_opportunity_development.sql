-- ============================================================
-- Model: ln_br_opportunity_development
-- Description: Landing-layer bridge view for landing_tracker.field_195
-- Auto-generated from canonical metadata
-- Canonical: bridge__opportunity__development
-- Bridge owner: Opportunities | target: Developments
-- Field: field_195 | label: Development
-- ============================================================

select
    id_from as opportunity_id,
    id_to as development_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_195