-- ============================================================
-- Model: ln_br_project_follower
-- Description: Landing-layer bridge view for landing_tracker.field_2860
-- Auto-generated from canonical metadata
-- Canonical: bridge__project__operation_follower
-- Bridge owner: Project | target: Operations
-- Field: field_2860 | label: Followers
-- ============================================================

select
    id_from as project_id,
    id_to as operation_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2860