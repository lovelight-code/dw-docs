-- ============================================================
-- Model: ln_br_audit_note_lead
-- Description: Landing-layer bridge view for landing_tracker.field_1692
-- Auto-generated from canonical metadata
-- Canonical: bridge__audit_note__lead
-- Bridge owner: Audit Notes | target: Leads
-- Field: field_1692 | label: Lead
-- ============================================================

select
    id_from as audit_note_id,
    id_to as lead_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1692