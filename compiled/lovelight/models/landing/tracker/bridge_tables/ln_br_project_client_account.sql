-- ============================================================
-- Model: ln_br_project_client_account
-- Description: Landing-layer bridge view for landing_tracker.field_2972
-- Auto-generated from canonical metadata
-- Canonical: bridge__project__account_client_account
-- Bridge owner: Project | target: Accounts
-- Field: field_2972 | label: Client Account
-- ============================================================

select
    id_from as project_id,
    id_to as account_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2972