-- ============================================================
-- Model: ln_br_business_unit_division
-- Description: Landing-layer bridge view for landing_tracker.field_2226
-- Auto-generated from canonical metadata
-- Canonical: bridge__business_unit__division
-- Bridge owner: Business Units | target: Divisions
-- Field: field_2226 | label: Division
-- ============================================================

select
    id_from as business_unit_id,
    id_to as division_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2226