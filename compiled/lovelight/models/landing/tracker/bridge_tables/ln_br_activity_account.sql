-- ============================================================
-- Model: ln_br_activity_account
-- Description: Landing-layer bridge view for landing_tracker.field_1983
-- Auto-generated from canonical metadata
-- Canonical: bridge__activity__account
-- Bridge owner: Activities | target: Accounts
-- Field: field_1983 | label: Account
-- ============================================================

select
    id_from as activity_id,
    id_to as account_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1983