-- ============================================================
-- Model: ln_br_audit_note_call_out
-- Description: Landing-layer bridge view for landing_tracker.field_1741
-- Auto-generated from canonical metadata
-- Canonical: bridge__audit_note__call_out
-- Bridge owner: Audit Notes | target: Call Outs
-- Field: field_1741 | label: Call Out
-- ============================================================

select
    id_from as audit_note_id,
    id_to as call_out_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1741