-- ============================================================
-- Model: ln_br_oh_and_s_incident_report_user
-- Description: Landing-layer bridge view for landing_tracker.field_2574
-- Auto-generated from canonical metadata
-- Canonical: bridge__oh_and_s_incident_report__user
-- Bridge owner: [OH&S] Incident Report | target: Users
-- Field: field_2574 | label: Who was on site?
-- ============================================================

select
    id_from as oh_and_s_incident_report_id,
    id_to as user_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2574