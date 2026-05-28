-- ============================================================
-- Model: ln_br_activity_opportunity
-- Description: Landing-layer bridge view for landing_tracker.field_1771
-- Auto-generated from canonical metadata
-- Canonical: bridge__activity__opportunity
-- Bridge owner: Activities | target: Opportunities
-- Field: field_1771 | label: Opportunity
-- ============================================================

select
    id_from as activity_id,
    id_to as opportunity_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1771