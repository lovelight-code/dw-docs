-- ============================================================
-- Model: ln_br_account_role_account_contact_title
-- Description: Landing-layer bridge view for landing_tracker.field_1751
-- Auto-generated from canonical metadata
-- Canonical: bridge__account_role__account_contact_title
-- Bridge owner: Account Roles | target: Account Contact Titles
-- Field: field_1751 | label: Job Title, Role or Position
-- ============================================================

select
    id_from as account_role_id,
    id_to as account_contact_title_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1751