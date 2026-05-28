-- ============================================================
-- Model: ln_br_oh_and_s_incident_report_job
-- Description: Landing-layer bridge view for landing_tracker.field_2565
-- Auto-generated from canonical metadata
-- Canonical: bridge__oh_and_s_incident_report__job
-- Bridge owner: [OH&S] Incident Report | target: Jobs
-- Field: field_2565 | label: Incident Job
-- ============================================================

select
    id_from as oh_and_s_incident_report_id,
    id_to as job_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2565