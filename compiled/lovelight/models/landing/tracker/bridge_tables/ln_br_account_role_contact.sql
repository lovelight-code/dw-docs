-- ============================================================
-- Model: ln_br_account_role_contact
-- Description: Landing-layer bridge view for landing_tracker.field_1748
-- Auto-generated from canonical metadata
-- Canonical: bridge__account_role__contact
-- Bridge owner: Account Roles | target: Contacts
-- Field: field_1748 | label: Contact
-- ============================================================

select
    id_from as account_role_id,
    id_to as contact_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1748