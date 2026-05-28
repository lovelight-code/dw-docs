-- ============================================================
-- Model: ln_br_opportunity_reviewer
-- Description: Landing-layer bridge view for landing_tracker.field_830
-- Auto-generated from canonical metadata
-- Canonical: bridge__opportunity__user_reviewer
-- Bridge owner: Opportunities | target: Users
-- Field: field_830 | label: Reviewer
-- ============================================================

select
    id_from as opportunity_id,
    id_to as user_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_830