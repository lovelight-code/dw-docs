-- ============================================================
-- Model: ln_br_account_partner_account
-- Description: Landing-layer bridge view for landing_tracker.field_1811
-- Auto-generated from canonical metadata
-- Canonical: bridge__account_partner__account
-- Bridge owner: Account Partners | target: Accounts
-- Field: field_1811 | label: Accounts
-- ============================================================

select
    id_from as account_partner_id,
    id_to as account_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1811