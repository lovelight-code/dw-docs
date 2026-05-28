-- ============================================================
-- Model: ln_br_account_contact
-- Description: Landing-layer bridge view for landing_tracker.field_1564
-- Auto-generated from canonical metadata
-- Canonical: bridge__account__contact
-- Bridge owner: Accounts | target: Contacts
-- Field: field_1564 | label: Invoicing Contact
-- ============================================================

select
    id_from as account_id,
    id_to as contact_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1564