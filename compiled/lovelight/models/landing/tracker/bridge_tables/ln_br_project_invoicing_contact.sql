-- ============================================================
-- Model: ln_br_project_invoicing_contact
-- Description: Landing-layer bridge view for landing_tracker.field_2624
-- Auto-generated from canonical metadata
-- Canonical: bridge__project__contact_invoicing_contact
-- Bridge owner: Project | target: Contacts
-- Field: field_2624 | label: Invoicing Contact
-- ============================================================

select
    id_from as project_id,
    id_to as contact_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2624