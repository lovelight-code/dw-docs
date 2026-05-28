-- ============================================================
-- Model: ln_br_document_ordered_by
-- Description: Landing-layer bridge view for landing_tracker.field_785
-- Auto-generated from canonical metadata
-- Canonical: bridge__document__staff_ordered_by
-- Bridge owner: Documents | target: Staff
-- Field: field_785 | label: Ordered By
-- ============================================================

select
    id_from as document_id,
    id_to as staff_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_785