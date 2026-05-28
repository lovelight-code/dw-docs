-- ============================================================
-- Model: ln_br_account_role_account
-- Description: Landing-layer bridge view for landing_tracker.field_1749
-- Auto-generated from canonical metadata
-- Canonical: bridge__account_role__account
-- Bridge owner: Account Roles | target: Accounts
-- Field: field_1749 | label: Account
-- ============================================================

select
    id_from as account_role_id,
    id_to as account_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1749