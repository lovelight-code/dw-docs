-- ============================================================
-- Model: ln_br_chain_request_user
-- Description: Landing-layer bridge view for landing_tracker.field_2014
-- Auto-generated from canonical metadata
-- Canonical: bridge__chain_request__user
-- Bridge owner: Chain Request | target: Users
-- Field: field_2014 | label: Request By
-- ============================================================

select
    id_from as chain_request_id,
    id_to as user_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2014