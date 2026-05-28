-- ============================================================
-- Model: ln_br_issue_issue_action
-- Description: Landing-layer bridge view for landing_tracker.field_1922
-- Auto-generated from canonical metadata
-- Canonical: bridge__issue__issue_action
-- Bridge owner: Issues | target: Issue Actions
-- Field: field_1922 | label: Issue Action
-- ============================================================

select
    id_from as issue_id,
    id_to as issue_action_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1922