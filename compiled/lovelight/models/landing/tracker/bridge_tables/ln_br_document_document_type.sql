-- ============================================================
-- Model: ln_br_document_document_type
-- Description: Landing-layer bridge view for landing_tracker.field_301
-- Auto-generated from canonical metadata
-- Canonical: bridge__document__document_type
-- Bridge owner: Documents | target: Document Types
-- Field: field_301 | label: Document Type
-- ============================================================

select
    id_from as document_id,
    id_to as document_type_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_301