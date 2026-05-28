-- ============================================================
-- Model: ln_br_pm_call_out_opportunity
-- Description: Landing-layer bridge view for landing_tracker.field_2157
-- Auto-generated from canonical metadata
-- Canonical: bridge__pm_call_out__opportunity
-- Bridge owner: PM Call Out | target: Opportunities
-- Field: field_2157 | label: Opportunity
-- ============================================================

select
    id_from as pm_call_out_id,
    id_to as opportunity_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2157