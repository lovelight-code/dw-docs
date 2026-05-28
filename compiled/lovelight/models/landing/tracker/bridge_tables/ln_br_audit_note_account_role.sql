-- ============================================================
-- Model: ln_br_audit_note_account_role
-- Description: Landing-layer bridge view for landing_tracker.field_1757
-- Auto-generated from canonical metadata
-- Canonical: bridge__audit_note__account_role
-- Bridge owner: Audit Notes | target: Account Roles
-- Field: field_1757 | label: Account Role
-- ============================================================

select
    id_from as audit_note_id,
    id_to as account_role_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1757