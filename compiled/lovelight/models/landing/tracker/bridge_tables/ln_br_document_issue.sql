-- ============================================================
-- Model: ln_br_document_issue
-- Description: Landing-layer bridge view for landing_tracker.field_1936
-- Auto-generated from canonical metadata
-- Canonical: bridge__document__issue
-- Bridge owner: Documents | target: Issues
-- Field: field_1936 | label: Issues
-- ============================================================

select
    id_from as document_id,
    id_to as issue_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1936