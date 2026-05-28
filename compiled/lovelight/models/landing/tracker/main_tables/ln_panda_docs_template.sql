-- ============================================================
-- Model: ln_panda_docs_template
-- Description: Landing-layer view that flattens object_152
--              and its subtables into one record per panda_docs_template.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_152 table
-- ------------------------------------------------------------
o152 as (
    select *
    from landing_tracker.object_152
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o152.id,
    o152.created as src_created_at,
    o152.updated as src_updated_at,
    o152.field_2205 as name,
    o152.field_2206 as template_id,
    o152._dlt_id as dlt_id,
    o152._dlt_load_id as dlt_load_id,
    o152.created_at as created_at,
    o152.updated_at as updated_at
from o152