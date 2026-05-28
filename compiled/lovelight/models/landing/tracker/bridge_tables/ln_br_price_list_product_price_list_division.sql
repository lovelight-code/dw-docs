-- ============================================================
-- Model: ln_br_price_list_product_price_list_division
-- Description: Landing-layer bridge view for landing_tracker.field_2682
-- Auto-generated from canonical metadata
-- Canonical: bridge__price_list_product__price_list_division
-- Bridge owner: Price List Products | target: Price List Division
-- Field: field_2682 | label: Price List Division
-- ============================================================

select
    id_from as price_list_product_id,
    id_to as price_list_division_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2682