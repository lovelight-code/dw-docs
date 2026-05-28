-- ============================================================
-- Model: ln_br_audit_note_account_relationship
-- Description: Landing-layer bridge view for landing_tracker.field_1801
-- Auto-generated from canonical metadata
-- Canonical: bridge__audit_note__account_relationship
-- Bridge owner: Audit Notes | target: Account Relationships
-- Field: field_1801 | label: Account Relationship
-- ============================================================

select
    id_from as audit_note_id,
    id_to as account_relationship_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1801