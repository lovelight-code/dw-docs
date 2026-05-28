-- ============================================================
-- Model: ln_br_notification_user
-- Description: Landing-layer bridge view for landing_tracker.field_1865
-- Auto-generated from canonical metadata
-- Canonical: bridge__notification__user
-- Bridge owner: Notifications | target: Users
-- Field: field_1865 | label: Recipient ID
-- ============================================================

select
    id_from as notification_id,
    id_to as user_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1865