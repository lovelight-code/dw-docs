-- ============================================================
-- Model: ln_br_image_development
-- Description: Landing-layer bridge view for landing_tracker.field_2000
-- Auto-generated from canonical metadata
-- Canonical: bridge__image__development
-- Bridge owner: Images | target: Developments
-- Field: field_2000 | label: Development
-- ============================================================

select
    id_from as image_id,
    id_to as development_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2000