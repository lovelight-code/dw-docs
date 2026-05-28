-- ============================================================
-- Model: ln_br_order_user
-- Description: Landing-layer bridge view for landing_tracker.field_53
-- Auto-generated from canonical metadata
-- Canonical: bridge__order__user
-- Bridge owner: Orders | target: Users
-- Field: field_53 | label: Created By
-- ============================================================

select
    id_from as order_id,
    id_to as user_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_53