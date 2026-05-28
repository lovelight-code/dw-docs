-- ============================================================
-- Model: ln_br_action_item_marked_complete_by
-- Description: Landing-layer bridge view for landing_tracker.field_3030
-- Auto-generated from canonical metadata
-- Canonical: bridge__action_item__user_marked_complete_by
-- Bridge owner: Action Items | target: Users
-- Field: field_3030 | label: Marked Complete By
-- ============================================================

select
    id_from as action_item_id,
    id_to as user_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_3030