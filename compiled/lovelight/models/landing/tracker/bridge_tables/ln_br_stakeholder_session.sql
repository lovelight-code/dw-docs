-- ============================================================
-- Model: ln_br_stakeholder_session
-- Description: Landing-layer bridge view for landing_tracker.field_1987
-- Auto-generated from canonical metadata
-- Canonical: bridge__stakeholder__session
-- Bridge owner: Stakeholders | target: Session
-- Field: field_1987 | label: Session
-- ============================================================

select
    id_from as stakeholder_id,
    id_to as session_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1987