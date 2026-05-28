-- ============================================================
-- Model: ln_br_job_salespeople
-- Description: Landing-layer bridge view for landing_tracker.field_1276
-- Auto-generated from canonical metadata
-- Canonical: bridge__job__salespeople
-- Bridge owner: Jobs | target: Salespeople
-- Field: field_1276 | label: Salesperson
-- ============================================================

select
    id_from as job_id,
    id_to as salespeople_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1276