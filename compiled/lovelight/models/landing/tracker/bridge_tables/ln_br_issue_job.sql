-- ============================================================
-- Model: ln_br_issue_job
-- Description: Landing-layer bridge view for landing_tracker.field_1909
-- Auto-generated from canonical metadata
-- Canonical: bridge__issue__job
-- Bridge owner: Issues | target: Jobs
-- Field: field_1909 | label: Jobs
-- ============================================================

select
    id_from as issue_id,
    id_to as job_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1909