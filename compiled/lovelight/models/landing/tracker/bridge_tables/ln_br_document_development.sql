-- ============================================================
-- Model: ln_br_document_development
-- Description: Landing-layer bridge view for landing_tracker.field_420
-- Auto-generated from canonical metadata
-- Canonical: bridge__document__development
-- Bridge owner: Documents | target: Developments
-- Field: field_420 | label: Development
-- ============================================================

select
    id_from as document_id,
    id_to as development_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_420