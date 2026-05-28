-- ============================================================
-- Model: ln_br_development_user
-- Description: Landing-layer bridge view for landing_tracker.field_2117
-- Auto-generated from canonical metadata
-- Canonical: bridge__development__user
-- Bridge owner: Developments | target: Users
-- Field: field_2117 | label: Created By
-- ============================================================

select
    id_from as development_id,
    id_to as user_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2117