-- ============================================================
-- Model: ln_br_price_list_price_list_product
-- Description: Landing-layer bridge view for landing_tracker.field_2670
-- Auto-generated from canonical metadata
-- Canonical: bridge__price_list__price_list_product
-- Bridge owner: Price List | target: Price List Products
-- Field: field_2670 | label: Price List Product
-- ============================================================

select
    id_from as price_list_id,
    id_to as price_list_product_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2670