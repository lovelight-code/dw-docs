-- ============================================================
-- Model: ln_br_job_user
-- Description: Landing-layer bridge view for landing_tracker.field_2735
-- Auto-generated from canonical metadata
-- Canonical: bridge__job__user
-- Bridge owner: Jobs | target: Users
-- Field: field_2735 | label: Installer Details Last Updated By
-- ============================================================

select
    id_from as job_id,
    id_to as user_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2735