-- ============================================================
-- Model: ln_br_order_job
-- Description: Landing-layer bridge view for landing_tracker.field_10
-- Auto-generated from canonical metadata
-- Canonical: bridge__order__job
-- Bridge owner: Orders | target: Jobs
-- Field: field_10 | label: Job
-- ============================================================

select
    id_from as order_id,
    id_to as job_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_10