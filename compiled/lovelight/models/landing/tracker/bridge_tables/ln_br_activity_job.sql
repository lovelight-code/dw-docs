-- ============================================================
-- Model: ln_br_activity_job
-- Description: Landing-layer bridge view for landing_tracker.field_1770
-- Auto-generated from canonical metadata
-- Canonical: bridge__activity__job
-- Bridge owner: Activities | target: Jobs
-- Field: field_1770 | label: Job
-- ============================================================

select
    id_from as activity_id,
    id_to as job_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1770