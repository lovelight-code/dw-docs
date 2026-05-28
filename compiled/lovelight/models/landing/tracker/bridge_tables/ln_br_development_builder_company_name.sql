-- ============================================================
-- Model: ln_br_development_builder_company_name
-- Description: Landing-layer bridge view for landing_tracker.field_2082
-- Auto-generated from canonical metadata
-- Canonical: bridge__development__account_builder_company_name
-- Bridge owner: Developments | target: Accounts
-- Field: field_2082 | label: Builder Company Name
-- ============================================================

select
    id_from as development_id,
    id_to as account_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2082