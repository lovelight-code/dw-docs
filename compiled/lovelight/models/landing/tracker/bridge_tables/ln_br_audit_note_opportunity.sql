-- ============================================================
-- Model: ln_br_audit_note_opportunity
-- Description: Landing-layer bridge view for landing_tracker.field_1663
-- Auto-generated from canonical metadata
-- Canonical: bridge__audit_note__opportunity
-- Bridge owner: Audit Notes | target: Opportunities
-- Field: field_1663 | label: Opportunity
-- ============================================================

select
    id_from as audit_note_id,
    id_to as opportunity_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1663