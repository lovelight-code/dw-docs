-- ============================================================
-- Model: ln_br_opportunity_account
-- Description: Landing-layer bridge view for landing_tracker.field_1387
-- Auto-generated from canonical metadata
-- Canonical: bridge__opportunity__account
-- Bridge owner: Opportunities | target: Accounts
-- Field: field_1387 | label: Lead Source Company
-- ============================================================

select
    id_from as opportunity_id,
    id_to as account_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1387