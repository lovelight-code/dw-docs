-- ============================================================
-- Model: ln_br_call_out_session
-- Description: Landing-layer bridge view for landing_tracker.field_2294
-- Auto-generated from canonical metadata
-- Canonical: bridge__call_out__session
-- Bridge owner: Call Outs | target: Session
-- Field: field_2294 | label: Session
-- ============================================================

select
    id_from as call_out_id,
    id_to as session_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2294