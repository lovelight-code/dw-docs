-- ============================================================
-- Model: ln_br_call_out_operation
-- Description: Landing-layer bridge view for landing_tracker.field_1474
-- Auto-generated from canonical metadata
-- Canonical: bridge__call_out__operation
-- Bridge owner: Call Outs | target: Operations
-- Field: field_1474 | label: Ops Person
-- ============================================================

select
    id_from as call_out_id,
    id_to as operation_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1474