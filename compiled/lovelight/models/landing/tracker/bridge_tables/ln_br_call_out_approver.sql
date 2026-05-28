-- ============================================================
-- Model: ln_br_call_out_approver
-- Description: Landing-layer bridge view for landing_tracker.field_2588
-- Auto-generated from canonical metadata
-- Canonical: bridge__call_out__operation_approver
-- Bridge owner: Call Outs | target: Operations
-- Field: field_2588 | label: Approver
-- ============================================================

select
    id_from as call_out_id,
    id_to as operation_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2588