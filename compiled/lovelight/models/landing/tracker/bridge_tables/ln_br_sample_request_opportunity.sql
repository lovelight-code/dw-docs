-- ============================================================
-- Model: ln_br_sample_request_opportunity
-- Description: Landing-layer bridge view for landing_tracker.field_2480
-- Auto-generated from canonical metadata
-- Canonical: bridge__sample_request__opportunity
-- Bridge owner: Sample Requests | target: Opportunities
-- Field: field_2480 | label: Opportunity
-- ============================================================

select
    id_from as sample_request_id,
    id_to as opportunity_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2480