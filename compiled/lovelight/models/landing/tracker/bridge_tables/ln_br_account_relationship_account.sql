-- ============================================================
-- Model: ln_br_account_relationship_account
-- Description: Landing-layer bridge view for landing_tracker.field_1786
-- Auto-generated from canonical metadata
-- Canonical: bridge__account_relationship__account
-- Bridge owner: Account Relationships | target: Accounts
-- Field: field_1786 | label: Parent Account
-- ============================================================

select
    id_from as account_relationship_id,
    id_to as account_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1786