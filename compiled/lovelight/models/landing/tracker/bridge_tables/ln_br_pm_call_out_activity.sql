-- ============================================================
-- Model: ln_br_pm_call_out_activity
-- Description: Landing-layer bridge view for landing_tracker.field_2155
-- Auto-generated from canonical metadata
-- Canonical: bridge__pm_call_out__activity
-- Bridge owner: PM Call Out | target: Activities
-- Field: field_2155 | label: Activities
-- ============================================================

select
    id_from as pm_call_out_id,
    id_to as activity_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2155