-- ============================================================
-- Model: ln_br_opportunity_lead
-- Description: Landing-layer bridge view for landing_tracker.field_949
-- Auto-generated from canonical metadata
-- Canonical: bridge__opportunity__lead
-- Bridge owner: Opportunities | target: Leads
-- Field: field_949 | label: Lead
-- ============================================================

select
    id_from as opportunity_id,
    id_to as lead_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_949