-- ============================================================
-- Model: ln_br_account_salespeople
-- Description: Landing-layer bridge view for landing_tracker.field_1760
-- Auto-generated from canonical metadata
-- Canonical: bridge__account__salespeople
-- Bridge owner: Accounts | target: Salespeople
-- Field: field_1760 | label: Lovelight Owner
-- ============================================================

select
    id_from as account_id,
    id_to as salespeople_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1760