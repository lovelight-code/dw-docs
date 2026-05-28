-- ============================================================
-- Model: ln_br_sample_request_lead
-- Description: Landing-layer bridge view for landing_tracker.field_2479
-- Auto-generated from canonical metadata
-- Canonical: bridge__sample_request__lead
-- Bridge owner: Sample Requests | target: Leads
-- Field: field_2479 | label: Lead
-- ============================================================

select
    id_from as sample_request_id,
    id_to as lead_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2479