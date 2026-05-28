-- ============================================================
-- Model: ln_br_job_scheduler
-- Description: Landing-layer bridge view for landing_tracker.field_741
-- Auto-generated from canonical metadata
-- Canonical: bridge__job__scheduler
-- Bridge owner: Jobs | target: Schedulers
-- Field: field_741 | label: Scheduler
-- ============================================================

select
    id_from as job_id,
    id_to as scheduler_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_741