-- ============================================================
-- Model: ln_br_order_scheduler
-- Description: Landing-layer bridge view for landing_tracker.field_824
-- Auto-generated from canonical metadata
-- Canonical: bridge__order__scheduler
-- Bridge owner: Orders | target: Schedulers
-- Field: field_824 | label: Job Scheduler
-- ============================================================

select
    id_from as order_id,
    id_to as scheduler_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_824