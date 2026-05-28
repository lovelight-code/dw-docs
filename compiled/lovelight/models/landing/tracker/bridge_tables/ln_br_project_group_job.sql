-- ============================================================
-- Model: ln_br_project_group_job
-- Description: Landing-layer bridge view for landing_tracker.field_2602
-- Auto-generated from canonical metadata
-- Canonical: bridge__project_group__job
-- Bridge owner: Project Group | target: Jobs
-- Field: field_2602 | label: Jobs
-- ============================================================

select
    id_from as project_group_id,
    id_to as job_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2602