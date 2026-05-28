-- ============================================================
-- Model: ln_br_stakeholder_stakeholder_title
-- Description: Landing-layer bridge view for landing_tracker.field_1898
-- Auto-generated from canonical metadata
-- Canonical: bridge__stakeholder__stakeholder_title
-- Bridge owner: Stakeholders | target: Stakeholder Titles
-- Field: field_1898 | label: Stakeholder Title
-- ============================================================

select
    id_from as stakeholder_id,
    id_to as stakeholder_title_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1898