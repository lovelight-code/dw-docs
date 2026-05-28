-- ============================================================
-- Model: ln_br_account_relationship_child_account
-- Description: Landing-layer bridge view for landing_tracker.field_1787
-- Auto-generated from canonical metadata
-- Canonical: bridge__account_relationship__account_child_account
-- Bridge owner: Account Relationships | target: Accounts
-- Field: field_1787 | label: Child Account
-- ============================================================

select
    id_from as account_relationship_id,
    id_to as account_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1787