-- ============================================================
-- Model: ln_br_job_contact
-- Description: Landing-layer bridge view for landing_tracker.field_411
-- Auto-generated from canonical metadata
-- Canonical: bridge__job__contact
-- Bridge owner: Jobs | target: Contacts
-- Field: field_411 | label: Invoicing Contact
-- ============================================================

select
    id_from as job_id,
    id_to as contact_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_411