-- ============================================================
-- Model: ln_br_session_user
-- Description: Landing-layer bridge view for landing_tracker.field_1985
-- Auto-generated from canonical metadata
-- Canonical: bridge__session__user
-- Bridge owner: Session | target: Users
-- Field: field_1985 | label: User
-- ============================================================

select
    id_from as session_id,
    id_to as user_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1985