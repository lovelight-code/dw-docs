-- ============================================================
-- Model: ln_br_issue_project
-- Description: Landing-layer bridge view for landing_tracker.field_2789
-- Auto-generated from canonical metadata
-- Canonical: bridge__issue__project
-- Bridge owner: Issues | target: Project
-- Field: field_2789 | label: Project
-- ============================================================

select
    id_from as issue_id,
    id_to as project_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2789