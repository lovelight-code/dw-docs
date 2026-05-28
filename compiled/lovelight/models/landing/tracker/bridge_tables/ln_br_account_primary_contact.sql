-- ============================================================
-- Model: ln_br_account_primary_contact
-- Description: Landing-layer bridge view for landing_tracker.field_1727
-- Auto-generated from canonical metadata
-- Canonical: bridge__account__contact_primary_contact
-- Bridge owner: Accounts | target: Contacts
-- Field: field_1727 | label: Primary Contact
-- ============================================================

select
    id_from as account_id,
    id_to as contact_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1727