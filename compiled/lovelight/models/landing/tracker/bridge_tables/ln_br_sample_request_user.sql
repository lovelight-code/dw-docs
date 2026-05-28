-- ============================================================
-- Model: ln_br_sample_request_user
-- Description: Landing-layer bridge view for landing_tracker.field_2474
-- Auto-generated from canonical metadata
-- Canonical: bridge__sample_request__user
-- Bridge owner: Sample Requests | target: Users
-- Field: field_2474 | label: Requested By
-- ============================================================

select
    id_from as sample_request_id,
    id_to as user_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2474