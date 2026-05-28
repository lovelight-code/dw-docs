-- ============================================================
-- Model: ln_br_lead_account
-- Description: Landing-layer bridge view for landing_tracker.field_1384
-- Auto-generated from canonical metadata
-- Canonical: bridge__lead__account
-- Bridge owner: Leads | target: Accounts
-- Field: field_1384 | label: Lead Source Company
-- ============================================================

select
    id_from as lead_id,
    id_to as account_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1384