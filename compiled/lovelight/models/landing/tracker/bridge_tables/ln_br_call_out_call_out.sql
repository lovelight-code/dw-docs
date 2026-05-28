-- ============================================================
-- Model: ln_br_call_out_call_out
-- Description: Landing-layer bridge view for landing_tracker.field_2594
-- Auto-generated from canonical metadata
-- Canonical: bridge__call_out__call_out
-- Bridge owner: Call Outs | target: Call Outs
-- Field: field_2594 | label: Copied From
-- ============================================================

select
    id_from as call_out_id,
    id_to as copied_from_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2594