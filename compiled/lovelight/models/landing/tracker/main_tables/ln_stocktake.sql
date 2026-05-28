-- ============================================================
-- Model: ln_stocktake
-- Description: Landing-layer view that flattens object_137
--              and its subtables into one record per stocktake.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_137 table
-- ------------------------------------------------------------
o137 as (
    select *
    from landing_tracker.object_137
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o137.id,
    o137.created as src_created_at,
    o137.updated as src_updated_at,
    o137.field_1963 as src_sys_id,
    o137.field_1964_all_day as date_time_all_day,
    o137.field_1964_date as date_time_date,
    o137.field_1966 as roller,
    o137.field_1967 as dual_roller,
    o137.field_1968 as motorised_roller,
    o137.field_1969 as timber_venetian,
    o137.field_1970 as aluminium_venetian,
    o137.field_1971 as curtain,
    o137.field_1972 as track,
    o137.field_1973 as pelmet,
    o137.field_1974 as shutter,
    o137.field_1975 as roman,
    o137.field_1976 as vertical,
    o137.field_1977 as additional_product,
    o137._dlt_id as dlt_id,
    o137._dlt_load_id as dlt_load_id,
    o137.created_at as created_at,
    o137.updated_at as updated_at
from o137