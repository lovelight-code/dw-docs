-- ============================================================
-- Model: ln_br_project_project_pc_status
-- Description: Landing-layer bridge view for landing_tracker.field_2772
-- Auto-generated from canonical metadata
-- Canonical: bridge__project__project_pc_status
-- Bridge owner: Project | target: Project PC Statuses
-- Field: field_2772 | label: PC Status
-- ============================================================

select
    id_from as project_id,
    id_to as project_pc_status_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2772