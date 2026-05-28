-- ============================================================
-- Model: ln_br_call_out_contact
-- Description: Landing-layer bridge view for landing_tracker.field_1025
-- Auto-generated from canonical metadata
-- Canonical: bridge__call_out__contact
-- Bridge owner: Call Outs | target: Contacts
-- Field: field_1025 | label: Site Contact
-- ============================================================

select
    id_from as call_out_id,
    id_to as contact_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1025