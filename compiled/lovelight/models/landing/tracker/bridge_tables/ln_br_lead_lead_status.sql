-- ============================================================
-- Model: ln_br_lead_lead_status
-- Description: Landing-layer bridge view for landing_tracker.field_1705
-- Auto-generated from canonical metadata
-- Canonical: bridge__lead__lead_status
-- Bridge owner: Leads | target: Lead Statuses
-- Field: field_1705 | label: Status
-- ============================================================

select
    id_from as lead_id,
    id_to as lead_status_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1705