-- ============================================================
-- Model: ln_br_audit_note_account
-- Description: Landing-layer bridge view for landing_tracker.field_1680
-- Auto-generated from canonical metadata
-- Canonical: bridge__audit_note__account
-- Bridge owner: Audit Notes | target: Accounts
-- Field: field_1680 | label: Account
-- ============================================================

select
    id_from as audit_note_id,
    id_to as account_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1680