-- ============================================================
-- Model: ln_br_stakeholder_lead
-- Description: Landing-layer bridge view for landing_tracker.field_1891
-- Auto-generated from canonical metadata
-- Canonical: bridge__stakeholder__lead
-- Bridge owner: Stakeholders | target: Leads
-- Field: field_1891 | label: Lead
-- ============================================================

select
    id_from as stakeholder_id,
    id_to as lead_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1891