-- ============================================================
-- Model: ln_br_job_project
-- Description: Landing-layer bridge view for landing_tracker.field_2603
-- Auto-generated from canonical metadata
-- Canonical: bridge__job__project
-- Bridge owner: Jobs | target: Project
-- Field: field_2603 | label: Project
-- ============================================================

select
    id_from as job_id,
    id_to as project_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2603