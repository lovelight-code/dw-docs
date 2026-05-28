-- ============================================================
-- Model: ln_br_activity_user
-- Description: Landing-layer bridge view for landing_tracker.field_1695
-- Auto-generated from canonical metadata
-- Canonical: bridge__activity__user
-- Bridge owner: Activities | target: Users
-- Field: field_1695 | label: Assigned To
-- ============================================================

select
    id_from as activity_id,
    id_to as user_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1695