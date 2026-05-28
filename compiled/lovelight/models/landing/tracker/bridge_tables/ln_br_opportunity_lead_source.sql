-- ============================================================
-- Model: ln_br_opportunity_lead_source
-- Description: Landing-layer bridge view for landing_tracker.field_1386
-- Auto-generated from canonical metadata
-- Canonical: bridge__opportunity__lead_source
-- Bridge owner: Opportunities | target: Lead Sources
-- Field: field_1386 | label: Lead Source
-- ============================================================

select
    id_from as opportunity_id,
    id_to as lead_source_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1386