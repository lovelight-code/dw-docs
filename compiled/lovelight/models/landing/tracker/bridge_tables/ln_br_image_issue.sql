-- ============================================================
-- Model: ln_br_image_issue
-- Description: Landing-layer bridge view for landing_tracker.field_1935
-- Auto-generated from canonical metadata
-- Canonical: bridge__image__issue
-- Bridge owner: Images | target: Issues
-- Field: field_1935 | label: Issues
-- ============================================================

select
    id_from as image_id,
    id_to as issue_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1935