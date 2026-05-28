-- ============================================================
-- Model: ln_br_project_job
-- Description: Landing-layer bridge view for landing_tracker.field_2855
-- Auto-generated from canonical metadata
-- Canonical: bridge__project__job
-- Bridge owner: Project | target: Jobs
-- Field: field_2855 | label: Legacy Parent Jobs
-- ============================================================

select
    id_from as project_id,
    id_to as job_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2855