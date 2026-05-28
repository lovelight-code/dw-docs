-- ============================================================
-- Model: ln_br_activity_lead
-- Description: Landing-layer bridge view for landing_tracker.field_1690
-- Auto-generated from canonical metadata
-- Canonical: bridge__activity__lead
-- Bridge owner: Activities | target: Leads
-- Field: field_1690 | label: Lead
-- ============================================================

select
    id_from as activity_id,
    id_to as lead_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1690