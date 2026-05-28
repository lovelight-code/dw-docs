-- ============================================================
-- Model: ln_br_action_item_user
-- Description: Landing-layer bridge view for landing_tracker.field_3023
-- Auto-generated from canonical metadata
-- Canonical: bridge__action_item__user
-- Bridge owner: Action Items | target: Users
-- Field: field_3023 | label: Assigned To
-- ============================================================

select
    id_from as action_item_id,
    id_to as user_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_3023