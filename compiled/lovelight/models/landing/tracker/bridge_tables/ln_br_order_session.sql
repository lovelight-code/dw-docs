-- ============================================================
-- Model: ln_br_order_session
-- Description: Landing-layer bridge view for landing_tracker.field_2436
-- Auto-generated from canonical metadata
-- Canonical: bridge__order__session
-- Bridge owner: Orders | target: Session
-- Field: field_2436 | label: Session
-- ============================================================

select
    id_from as order_id,
    id_to as session_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2436