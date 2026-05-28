-- ============================================================
-- Model: ln_br_pm_call_out_user
-- Description: Landing-layer bridge view for landing_tracker.field_2192
-- Auto-generated from canonical metadata
-- Canonical: bridge__pm_call_out__user
-- Bridge owner: PM Call Out | target: Users
-- Field: field_2192 | label: Created By
-- ============================================================

select
    id_from as pm_call_out_id,
    id_to as user_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2192