-- ============================================================
-- Model: ln_br_lead_account_dup
-- Description: Landing-layer bridge view for landing_tracker.field_1904
-- Auto-generated from canonical metadata
-- Canonical: bridge__lead__account_account
-- Bridge owner: Leads | target: Accounts
-- Field: field_1904 | label: Account
-- ============================================================

select
    id_from as lead_id,
    id_to as account_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1904