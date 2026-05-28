-- ============================================================
-- Model: ln_br_issue_issue_type
-- Description: Landing-layer bridge view for landing_tracker.field_1920
-- Auto-generated from canonical metadata
-- Canonical: bridge__issue__issue_type
-- Bridge owner: Issues | target: Issue Types
-- Field: field_1920 | label: Issue Type
-- ============================================================

select
    id_from as issue_id,
    id_to as issue_type_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1920