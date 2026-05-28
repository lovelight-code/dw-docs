-- ============================================================
-- Model: ln_br_chain_request_division
-- Description: Landing-layer bridge view for landing_tracker.field_2022
-- Auto-generated from canonical metadata
-- Canonical: bridge__chain_request__division
-- Bridge owner: Chain Request | target: Divisions
-- Field: field_2022 | label: Division
-- ============================================================

select
    id_from as chain_request_id,
    id_to as division_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2022