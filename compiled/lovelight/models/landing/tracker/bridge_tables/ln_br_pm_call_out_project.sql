-- ============================================================
-- Model: ln_br_pm_call_out_project
-- Description: Landing-layer bridge view for landing_tracker.field_2635
-- Auto-generated from canonical metadata
-- Canonical: bridge__pm_call_out__project
-- Bridge owner: PM Call Out | target: Project
-- Field: field_2635 | label: Project
-- ============================================================

select
    id_from as pm_call_out_id,
    id_to as project_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2635