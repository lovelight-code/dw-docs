-- ============================================================
-- Model: ln_br_opportunity_opportunity_status
-- Description: Landing-layer bridge view for landing_tracker.field_1831
-- Auto-generated from canonical metadata
-- Canonical: bridge__opportunity__opportunity_status
-- Bridge owner: Opportunities | target: Opportunity Statuses
-- Field: field_1831 | label: Status
-- ============================================================

select
    id_from as opportunity_id,
    id_to as opportunity_status_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1831