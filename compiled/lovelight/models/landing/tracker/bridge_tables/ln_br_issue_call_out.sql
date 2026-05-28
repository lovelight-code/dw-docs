-- ============================================================
-- Model: ln_br_issue_call_out
-- Description: Landing-layer bridge view for landing_tracker.field_1907
-- Auto-generated from canonical metadata
-- Canonical: bridge__issue__call_out
-- Bridge owner: Issues | target: Call Outs
-- Field: field_1907 | label: Call Out
-- ============================================================

select
    id_from as issue_id,
    id_to as call_out_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1907