-- ============================================================
-- Model: ln_br_job_project_scope
-- Description: Landing-layer bridge view for landing_tracker.field_2617
-- Auto-generated from canonical metadata
-- Canonical: bridge__job__project_scope
-- Bridge owner: Jobs | target: Project Scopes
-- Field: field_2617 | label: Project Scope
-- ============================================================

select
    id_from as job_id,
    id_to as project_scope_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2617