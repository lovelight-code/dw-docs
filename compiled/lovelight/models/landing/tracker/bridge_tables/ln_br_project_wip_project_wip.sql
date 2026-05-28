-- ============================================================
-- Model: ln_br_project_wip_project_wip
-- Description: Landing-layer bridge view for landing_tracker.field_2950
-- Auto-generated from canonical metadata
-- Canonical: bridge__project_wip__project_wip
-- Bridge owner: Project WIP | target: Project WIP
-- Field: field_2950 | label: Previous Meeting
-- ============================================================

select
    id_from as project_wip_id,
    id_to as previous_meeting_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2950