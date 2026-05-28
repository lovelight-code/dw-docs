-- ============================================================
-- Model: ln_br_lead_lead_source
-- Description: Landing-layer bridge view for landing_tracker.field_967
-- Auto-generated from canonical metadata
-- Canonical: bridge__lead__lead_source
-- Bridge owner: Leads | target: Lead Sources
-- Field: field_967 | label: Lead Source
-- ============================================================

select
    id_from as lead_id,
    id_to as lead_source_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_967