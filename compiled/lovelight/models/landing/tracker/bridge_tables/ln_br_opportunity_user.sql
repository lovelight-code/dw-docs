-- ============================================================
-- Model: ln_br_opportunity_user
-- Description: Landing-layer bridge view for landing_tracker.field_2599
-- Auto-generated from canonical metadata
-- Canonical: bridge__opportunity__user
-- Bridge owner: Opportunities | target: Users
-- Field: field_2599 | label: Created By
-- ============================================================

select
    id_from as opportunity_id,
    id_to as user_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2599