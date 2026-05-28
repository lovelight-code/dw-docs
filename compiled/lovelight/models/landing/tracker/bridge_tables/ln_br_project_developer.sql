-- ============================================================
-- Model: ln_br_project_developer
-- Description: Landing-layer bridge view for landing_tracker.field_2764
-- Auto-generated from canonical metadata
-- Canonical: bridge__project__account_developer
-- Bridge owner: Project | target: Accounts
-- Field: field_2764 | label: Developer
-- ============================================================

select
    id_from as project_id,
    id_to as account_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2764