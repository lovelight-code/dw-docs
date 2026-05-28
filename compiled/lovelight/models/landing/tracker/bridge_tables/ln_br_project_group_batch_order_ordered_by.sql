-- ============================================================
-- Model: ln_br_project_group_batch_order_ordered_by
-- Description: Landing-layer bridge view for landing_tracker.field_2851
-- Auto-generated from canonical metadata
-- Canonical: bridge__project_group__user_batch_order_ordered_by
-- Bridge owner: Project Group | target: Users
-- Field: field_2851 | label: Batch Order - Ordered By
-- ============================================================

select
    id_from as project_group_id,
    id_to as user_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2851