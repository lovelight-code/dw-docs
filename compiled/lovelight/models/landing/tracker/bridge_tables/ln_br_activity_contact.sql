-- ============================================================
-- Model: ln_br_activity_contact
-- Description: Landing-layer bridge view for landing_tracker.field_1689
-- Auto-generated from canonical metadata
-- Canonical: bridge__activity__contact
-- Bridge owner: Activities | target: Contacts
-- Field: field_1689 | label: Contacts
-- ============================================================

select
    id_from as activity_id,
    id_to as contact_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1689