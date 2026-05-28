-- ============================================================
-- Model: ln_br_document_reviewer
-- Description: Landing-layer bridge view for landing_tracker.field_784
-- Auto-generated from canonical metadata
-- Canonical: bridge__document__staff_reviewer
-- Bridge owner: Documents | target: Staff
-- Field: field_784 | label: Reviewer
-- ============================================================

select
    id_from as document_id,
    id_to as staff_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_784