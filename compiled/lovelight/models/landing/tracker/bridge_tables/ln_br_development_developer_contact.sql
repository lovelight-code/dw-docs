-- ============================================================
-- Model: ln_br_development_developer_contact
-- Description: Landing-layer bridge view for landing_tracker.field_417
-- Auto-generated from canonical metadata
-- Canonical: bridge__development__contact_developer_contact
-- Bridge owner: Developments | target: Contacts
-- Field: field_417 | label: Developer Contacts
-- ============================================================

select
    id_from as development_id,
    id_to as contact_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_417