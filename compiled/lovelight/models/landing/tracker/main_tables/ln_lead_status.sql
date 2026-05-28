-- ============================================================
-- Model: ln_lead_status
-- Description: Landing-layer view that flattens object_116
--              and its subtables into one record per lead_status.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_116 table
-- ------------------------------------------------------------
o116 as (
    select *
    from landing_tracker.object_116
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_116__field_1721
-- ------------------------------------------------------------
o116f1721 as (
    select
        _dlt_parent_id,
        max(value) as user
    from landing_tracker.object_116__field_1721
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o116.id,
    o116.created as src_created_at,
    o116.updated as src_updated_at,
    o116.field_1700 as status,
    o116.field_1701 as icon_url,
    o116.field_1702 as sort_order,
    o116.field_1703 as icon,
    o116.field_1704 as status_with_icon,
    o116.field_1725 as sort_order_status,
    o116.field_1833 as completed,
    o116.field_1980 as small_icon,
    o116f1721.user as user,
    o116._dlt_id as dlt_id,
    o116._dlt_load_id as dlt_load_id,
    o116.created_at as created_at,
    o116.updated_at as updated_at
from o116
left join o116f1721 on o116._dlt_id = o116f1721._dlt_parent_id