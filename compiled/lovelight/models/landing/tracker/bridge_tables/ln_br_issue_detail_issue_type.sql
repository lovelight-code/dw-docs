-- ============================================================
-- Model: ln_br_issue_detail_issue_type
-- Description: Landing-layer bridge view for landing_tracker.field_1915
-- Auto-generated from canonical metadata
-- Canonical: bridge__issue_detail__issue_type
-- Bridge owner: Issue Details | target: Issue Types
-- Field: field_1915 | label: Type
-- ============================================================

select
    id_from as issue_detail_id,
    id_to as issue_type_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1915