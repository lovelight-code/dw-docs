-- ============================================================
-- Model: ln_br_job_site_contact
-- Description: Landing-layer bridge view for landing_tracker.field_432
-- Auto-generated from canonical metadata
-- Canonical: bridge__job__contact_site_contact
-- Bridge owner: Jobs | target: Contacts
-- Field: field_432 | label: Site Contact
-- ============================================================

select
    id_from as job_id,
    id_to as contact_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_432