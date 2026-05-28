-- ============================================================
-- Model: ln_br_contact_salespeople
-- Description: Landing-layer bridge view for landing_tracker.field_997
-- Auto-generated from canonical metadata
-- Canonical: bridge__contact__salespeople
-- Bridge owner: Contacts | target: Salespeople
-- Field: field_997 | label: Lovelight Owner
-- ============================================================

select
    id_from as contact_id,
    id_to as salespeople_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_997