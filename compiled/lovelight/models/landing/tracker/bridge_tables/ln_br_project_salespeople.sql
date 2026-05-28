-- ============================================================
-- Model: ln_br_project_salespeople
-- Description: Landing-layer bridge view for landing_tracker.field_2253
-- Auto-generated from canonical metadata
-- Canonical: bridge__project__salespeople
-- Bridge owner: Project | target: Salespeople
-- Field: field_2253 | label: Salesperson
-- ============================================================

select
    id_from as project_id,
    id_to as salespeople_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2253