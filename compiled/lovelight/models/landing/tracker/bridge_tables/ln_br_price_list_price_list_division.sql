-- ============================================================
-- Model: ln_br_price_list_price_list_division
-- Description: Landing-layer bridge view for landing_tracker.field_2663
-- Auto-generated from canonical metadata
-- Canonical: bridge__price_list__price_list_division
-- Bridge owner: Price List | target: Price List Division
-- Field: field_2663 | label: Price List Division
-- ============================================================

select
    id_from as price_list_id,
    id_to as price_list_division_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2663