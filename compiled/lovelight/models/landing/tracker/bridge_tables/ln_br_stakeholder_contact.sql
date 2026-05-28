-- ============================================================
-- Model: ln_br_stakeholder_contact
-- Description: Landing-layer bridge view for landing_tracker.field_1889
-- Auto-generated from canonical metadata
-- Canonical: bridge__stakeholder__contact
-- Bridge owner: Stakeholders | target: Contacts
-- Field: field_1889 | label: Contacts
-- ============================================================

select
    id_from as stakeholder_id,
    id_to as contact_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1889