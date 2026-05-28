-- ============================================================
-- Model: ln_br_image_session
-- Description: Landing-layer bridge view for landing_tracker.field_2295
-- Auto-generated from canonical metadata
-- Canonical: bridge__image__session
-- Bridge owner: Images | target: Session
-- Field: field_2295 | label: Session
-- ============================================================

select
    id_from as image_id,
    id_to as session_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2295