-- ============================================================
-- Model: ln_br_sample_request_contact
-- Description: Landing-layer bridge view for landing_tracker.field_2468
-- Auto-generated from canonical metadata
-- Canonical: bridge__sample_request__contact
-- Bridge owner: Sample Requests | target: Contacts
-- Field: field_2468 | label: Recipient Contact
-- ============================================================

select
    id_from as sample_request_id,
    id_to as contact_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2468