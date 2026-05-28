-- ============================================================
-- Model: ln_br_sample_request_division
-- Description: Landing-layer bridge view for landing_tracker.field_2475
-- Auto-generated from canonical metadata
-- Canonical: bridge__sample_request__division
-- Bridge owner: Sample Requests | target: Divisions
-- Field: field_2475 | label: Division
-- ============================================================

select
    id_from as sample_request_id,
    id_to as division_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2475