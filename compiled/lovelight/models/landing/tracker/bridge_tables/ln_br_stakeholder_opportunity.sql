-- ============================================================
-- Model: ln_br_stakeholder_opportunity
-- Description: Landing-layer bridge view for landing_tracker.field_1893
-- Auto-generated from canonical metadata
-- Canonical: bridge__stakeholder__opportunity
-- Bridge owner: Stakeholders | target: Opportunities
-- Field: field_1893 | label: Opportunity
-- ============================================================

select
    id_from as stakeholder_id,
    id_to as opportunity_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1893