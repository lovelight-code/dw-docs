-- ============================================================
-- Model: ln_br_job_client_contact
-- Description: Landing-layer bridge view for landing_tracker.field_80
-- Auto-generated from canonical metadata
-- Canonical: bridge__job__contact_client_contact
-- Bridge owner: Jobs | target: Contacts
-- Field: field_80 | label: Client Contact
-- ============================================================

select
    id_from as job_id,
    id_to as contact_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_80