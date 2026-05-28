-- ============================================================
-- Model: ln_br_document_session
-- Description: Landing-layer bridge view for landing_tracker.field_2451
-- Auto-generated from canonical metadata
-- Canonical: bridge__document__session
-- Bridge owner: Documents | target: Session
-- Field: field_2451 | label: Session
-- ============================================================

select
    id_from as document_id,
    id_to as session_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2451