-- ============================================================
-- Model: ln_br_issue_action_action
-- Description: Landing-layer bridge view for landing_tracker.field_1924
-- Auto-generated from canonical metadata
-- Canonical: bridge__issue_action__action
-- Bridge owner: Issue Actions | target: Actions
-- Field: field_1924 | label: Action
-- ============================================================

select
    id_from as issue_action_id,
    id_to as action_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1924