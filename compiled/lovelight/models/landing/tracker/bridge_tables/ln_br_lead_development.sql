-- ============================================================
-- Model: ln_br_lead_development
-- Description: Landing-layer bridge view for landing_tracker.field_2165
-- Auto-generated from canonical metadata
-- Canonical: bridge__lead__development
-- Bridge owner: Leads | target: Developments
-- Field: field_2165 | label: Development
-- ============================================================

select
    id_from as lead_id,
    id_to as development_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2165