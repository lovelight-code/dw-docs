-- ============================================================
-- Model: ln_br_issue_action_issue_detail
-- Description: Landing-layer bridge view for landing_tracker.field_1917
-- Auto-generated from canonical metadata
-- Canonical: bridge__issue_action__issue_detail
-- Bridge owner: Issue Actions | target: Issue Details
-- Field: field_1917 | label: Issue Detail
-- ============================================================

select
    id_from as issue_action_id,
    id_to as issue_detail_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1917