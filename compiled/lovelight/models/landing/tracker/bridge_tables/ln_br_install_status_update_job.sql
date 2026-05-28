-- ============================================================
-- Model: ln_br_install_status_update_job
-- Description: Landing-layer bridge view for landing_tracker.field_2750
-- Auto-generated from canonical metadata
-- Canonical: bridge__install_status_update__job
-- Bridge owner: Install Status Updates | target: Jobs
-- Field: field_2750 | label: Job
-- ============================================================

select
    id_from as install_status_update_id,
    id_to as job_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2750