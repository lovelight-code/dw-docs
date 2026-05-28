-- ============================================================
-- Model: ln_br_issue_issue_detail
-- Description: Landing-layer bridge view for landing_tracker.field_1921
-- Auto-generated from canonical metadata
-- Canonical: bridge__issue__issue_detail
-- Bridge owner: Issues | target: Issue Details
-- Field: field_1921 | label: Issue Detail
-- ============================================================

select
    id_from as issue_id,
    id_to as issue_detail_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1921