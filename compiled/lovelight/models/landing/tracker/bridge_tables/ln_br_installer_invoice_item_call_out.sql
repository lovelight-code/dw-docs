-- ============================================================
-- Model: ln_br_installer_invoice_item_call_out
-- Description: Landing-layer bridge view for landing_tracker.field_2647
-- Auto-generated from canonical metadata
-- Canonical: bridge__installer_invoice_item__call_out
-- Bridge owner: Installer Invoice Item | target: Call Outs
-- Field: field_2647 | label: Call Out
-- ============================================================

select
    id_from as installer_invoice_item_id,
    id_to as call_out_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2647