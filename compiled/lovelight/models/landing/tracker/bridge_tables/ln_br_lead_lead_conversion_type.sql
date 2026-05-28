-- ============================================================
-- Model: ln_br_lead_lead_conversion_type
-- Description: Landing-layer bridge view for landing_tracker.field_2197
-- Auto-generated from canonical metadata
-- Canonical: bridge__lead__lead_conversion_type
-- Bridge owner: Leads | target: Lead Conversion Types
-- Field: field_2197 | label: Lead Conversion Type
-- ============================================================

select
    id_from as lead_id,
    id_to as lead_conversion_type_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2197