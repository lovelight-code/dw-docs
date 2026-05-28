-- ============================================================
-- Model: ln_br_call_out_opportunity
-- Description: Landing-layer bridge view for landing_tracker.field_1957
-- Auto-generated from canonical metadata
-- Canonical: bridge__call_out__opportunity
-- Bridge owner: Call Outs | target: Opportunities
-- Field: field_1957 | label: Opportunity
-- ============================================================

select
    id_from as call_out_id,
    id_to as opportunity_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1957