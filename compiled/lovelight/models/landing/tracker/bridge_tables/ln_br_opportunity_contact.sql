-- ============================================================
-- Model: ln_br_opportunity_contact
-- Description: Landing-layer bridge view for landing_tracker.field_119
-- Auto-generated from canonical metadata
-- Canonical: bridge__opportunity__contact
-- Bridge owner: Opportunities | target: Contacts
-- Field: field_119 | label: Client Contact
-- ============================================================

select
    id_from as opportunity_id,
    id_to as contact_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_119