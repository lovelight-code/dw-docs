-- ============================================================
-- Model: ln_br_development_account
-- Description: Landing-layer bridge view for landing_tracker.field_1812
-- Auto-generated from canonical metadata
-- Canonical: bridge__development__account
-- Bridge owner: Developments | target: Accounts
-- Field: field_1812 | label: Developer Company
-- ============================================================

select
    id_from as development_id,
    id_to as account_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1812