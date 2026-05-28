-- ============================================================
-- Model: ln_br_lead_contact
-- Description: Landing-layer bridge view for landing_tracker.field_1670
-- Auto-generated from canonical metadata
-- Canonical: bridge__lead__contact
-- Bridge owner: Leads | target: Contacts
-- Field: field_1670 | label: Primary Contact
-- ============================================================

select
    id_from as lead_id,
    id_to as contact_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1670