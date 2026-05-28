-- ============================================================
-- Model: ln_dev_connection_form
-- Description: Landing-layer view that flattens object_121
--              and its subtables into one record per dev_connection_form.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_121 table
-- ------------------------------------------------------------
o121 as (
    select *
    from landing_tracker.object_121
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o121.id,
    o121.created as src_created_at,
    o121.updated as src_updated_at,
    o121.field_1758 as object_id,
    o121.field_1759 as edit_form_scene_slug,
    o121.field_1761 as display_field,
    o121.field_1763 as read_only_field,
    o121.field_1765 as display_form_scene_slug,
    o121.field_1880 as scene_slug,
    o121.field_1881 as function_to_display,
    o121.field_1905 as hidden,
    o121._dlt_id as dlt_id,
    o121._dlt_load_id as dlt_load_id,
    o121.created_at as created_at,
    o121.updated_at as updated_at
from o121