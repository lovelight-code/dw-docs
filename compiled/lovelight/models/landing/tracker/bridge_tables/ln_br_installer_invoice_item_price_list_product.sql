-- ============================================================
-- Model: ln_br_installer_invoice_item_price_list_product
-- Description: Landing-layer bridge view for landing_tracker.field_2677
-- Auto-generated from canonical metadata
-- Canonical: bridge__installer_invoice_item__price_list_product
-- Bridge owner: Installer Invoice Item | target: Price List Products
-- Field: field_2677 | label: Product
-- ============================================================

select
    id_from as installer_invoice_item_id,
    id_to as price_list_product_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2677