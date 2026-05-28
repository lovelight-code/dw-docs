-- ============================================================
-- Model: ln_br_document_opportunity
-- Description: Landing-layer bridge view for landing_tracker.field_1959
-- Auto-generated from canonical metadata
-- Canonical: bridge__document__opportunity
-- Bridge owner: Documents | target: Opportunities
-- Field: field_1959 | label: Opportunity
-- ============================================================

select
    id_from as document_id,
    id_to as opportunity_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1959