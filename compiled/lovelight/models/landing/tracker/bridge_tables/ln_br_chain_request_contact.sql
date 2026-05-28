-- ============================================================
-- Model: ln_br_chain_request_contact
-- Description: Landing-layer bridge view for landing_tracker.field_2011
-- Auto-generated from canonical metadata
-- Canonical: bridge__chain_request__contact
-- Bridge owner: Chain Request | target: Contacts
-- Field: field_2011 | label: Customer Contact
-- ============================================================

select
    id_from as chain_request_id,
    id_to as contact_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2011