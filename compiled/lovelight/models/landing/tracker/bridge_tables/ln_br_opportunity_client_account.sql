-- ============================================================
-- Model: ln_br_opportunity_client_account
-- Description: Landing-layer bridge view for landing_tracker.field_1460
-- Auto-generated from canonical metadata
-- Canonical: bridge__opportunity__account_client_account
-- Bridge owner: Opportunities | target: Accounts
-- Field: field_1460 | label: Client Account
-- ============================================================

select
    id_from as opportunity_id,
    id_to as account_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1460