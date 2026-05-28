-- ============================================================
-- Model: ln_br_opportunity_session
-- Description: Landing-layer bridge view for landing_tracker.field_2460
-- Auto-generated from canonical metadata
-- Canonical: bridge__opportunity__session
-- Bridge owner: Opportunities | target: Session
-- Field: field_2460 | label: Session
-- ============================================================

select
    id_from as opportunity_id,
    id_to as session_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2460