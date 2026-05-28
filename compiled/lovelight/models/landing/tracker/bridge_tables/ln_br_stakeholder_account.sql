-- ============================================================
-- Model: ln_br_stakeholder_account
-- Description: Landing-layer bridge view for landing_tracker.field_1890
-- Auto-generated from canonical metadata
-- Canonical: bridge__stakeholder__account
-- Bridge owner: Stakeholders | target: Accounts
-- Field: field_1890 | label: Accounts
-- ============================================================

select
    id_from as stakeholder_id,
    id_to as account_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1890