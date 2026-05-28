-- ============================================================
-- Model: ln_br_call_out_scheduler
-- Description: Landing-layer bridge view for landing_tracker.field_931
-- Auto-generated from canonical metadata
-- Canonical: bridge__call_out__scheduler
-- Bridge owner: Call Outs | target: Schedulers
-- Field: field_931 | label: Scheduler
-- ============================================================

select
    id_from as call_out_id,
    id_to as scheduler_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_931