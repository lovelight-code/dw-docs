-- ============================================================
-- Model: ln_br_account_state
-- Description: Landing-layer bridge view for landing_tracker.field_1994
-- Auto-generated from canonical metadata
-- Canonical: bridge__account__state
-- Bridge owner: Accounts | target: States
-- Field: field_1994 | label: States
-- ============================================================

select
    id_from as account_id,
    id_to as state_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1994