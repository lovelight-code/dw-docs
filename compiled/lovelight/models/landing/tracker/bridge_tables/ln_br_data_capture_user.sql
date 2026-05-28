-- ============================================================
-- Model: ln_br_data_capture_user
-- Description: Landing-layer bridge view for landing_tracker.field_3061
-- Auto-generated from canonical metadata
-- Canonical: bridge__data_capture__user
-- Bridge owner: Data Capture | target: Users
-- Field: field_3061 | label: Created By
-- ============================================================

select
    id_from as data_capture_id,
    id_to as user_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_3061