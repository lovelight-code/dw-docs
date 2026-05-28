-- ============================================================
-- Model: ln_br_image_user
-- Description: Landing-layer bridge view for landing_tracker.field_2695
-- Auto-generated from canonical metadata
-- Canonical: bridge__image__user
-- Bridge owner: Images | target: Users
-- Field: field_2695 | label: Created By
-- ============================================================

select
    id_from as image_id,
    id_to as user_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2695