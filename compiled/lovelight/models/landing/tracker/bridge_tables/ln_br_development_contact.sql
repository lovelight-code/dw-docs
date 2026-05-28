-- ============================================================
-- Model: ln_br_development_contact
-- Description: Landing-layer bridge view for landing_tracker.field_2083
-- Auto-generated from canonical metadata
-- Canonical: bridge__development__contact
-- Bridge owner: Developments | target: Contacts
-- Field: field_2083 | label: Builder Contacts
-- ============================================================

select
    id_from as development_id,
    id_to as contact_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2083