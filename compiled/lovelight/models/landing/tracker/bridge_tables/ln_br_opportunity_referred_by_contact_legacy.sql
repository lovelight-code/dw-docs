-- ============================================================
-- Model: ln_br_opportunity_referred_by_contact_legacy
-- Description: Landing-layer bridge view for landing_tracker.field_200
-- Auto-generated from canonical metadata
-- Canonical: bridge__opportunity__contact_referred_by_contact_legacy
-- Bridge owner: Opportunities | target: Contacts
-- Field: field_200 | label: Referred By Contact (legacy)
-- ============================================================

select
    id_from as opportunity_id,
    id_to as contact_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_200