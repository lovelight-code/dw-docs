-- ============================================================
-- Model: ln_br_project_contact
-- Description: Landing-layer bridge view for landing_tracker.field_2612
-- Auto-generated from canonical metadata
-- Canonical: bridge__project__contact
-- Bridge owner: Project | target: Contacts
-- Field: field_2612 | label: Site Contact
-- ============================================================

select
    id_from as project_id,
    id_to as contact_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2612