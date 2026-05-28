-- ============================================================
-- Model: ln_br_lead_session
-- Description: Landing-layer bridge view for landing_tracker.field_1986
-- Auto-generated from canonical metadata
-- Canonical: bridge__lead__session
-- Bridge owner: Leads | target: Session
-- Field: field_1986 | label: Session
-- ============================================================

select
    id_from as lead_id,
    id_to as session_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1986