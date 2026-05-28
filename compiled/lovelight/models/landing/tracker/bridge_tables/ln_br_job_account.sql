-- ============================================================
-- Model: ln_br_job_account
-- Description: Landing-layer bridge view for landing_tracker.field_1459
-- Auto-generated from canonical metadata
-- Canonical: bridge__job__account
-- Bridge owner: Jobs | target: Accounts
-- Field: field_1459 | label: Client Account
-- ============================================================

select
    id_from as job_id,
    id_to as account_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1459