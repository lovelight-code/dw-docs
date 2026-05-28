-- ============================================================
-- Model: ln_br_account_relationship_child_is_to_parent
-- Description: Landing-layer bridge view for landing_tracker.field_1792
-- Auto-generated from canonical metadata
-- Canonical: bridge__account_relationship__account_relationship_type_child_is_to_parent
-- Bridge owner: Account Relationships | target: Account Relationship Types
-- Field: field_1792 | label: Child is to Parent
-- ============================================================

select
    id_from as account_relationship_id,
    id_to as account_relationship_type_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1792