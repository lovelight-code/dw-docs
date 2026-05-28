-- ============================================================
-- Model: ln_br_document_staff
-- Description: Landing-layer bridge view for landing_tracker.field_2247
-- Auto-generated from canonical metadata
-- Canonical: bridge__document__staff
-- Bridge owner: Documents | target: Staff
-- Field: field_2247 | label: Created By
-- ============================================================

select
    id_from as document_id,
    id_to as staff_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2247