-- ============================================================
-- Model: ln_br_installer_invoice_item_user
-- Description: Landing-layer bridge view for landing_tracker.field_2685
-- Auto-generated from canonical metadata
-- Canonical: bridge__installer_invoice_item__user
-- Bridge owner: Installer Invoice Item | target: Users
-- Field: field_2685 | label: Created By
-- ============================================================

select
    id_from as installer_invoice_item_id,
    id_to as user_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2685