-- ============================================================
-- Model: ln_br_project_wip_next_meeting
-- Description: Landing-layer bridge view for landing_tracker.field_3001
-- Auto-generated from canonical metadata
-- Canonical: bridge__project_wip__project_wip_next_meeting
-- Bridge owner: Project WIP | target: Project WIP
-- Field: field_3001 | label: Next Meeting
-- ============================================================

select
    id_from as project_wip_id,
    id_to as next_meeting_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_3001