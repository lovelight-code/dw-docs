-- ============================================================
-- Model: ln_issue
-- Description: Landing-layer view that flattens object_132
--              and its subtables into one record per issue.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_132 table
-- ------------------------------------------------------------
o132 as (
    select *
    from landing_tracker.object_132
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_132__field_1919
-- ------------------------------------------------------------
o132f1919 as (
    select
        _dlt_parent_id,
        max(value) as do_we_need_to_return_to_site
    from landing_tracker.object_132__field_1919
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o132.id,
    o132.created as src_created_at,
    o132.updated as src_updated_at,
    o132.field_1910 as src_sys_id,
    o132.field_1911 as comment,
    o132.field_1927 as count_job,
    o132.field_1933 as display,
    o132.field_1940 as order_line_number,
    o132f1919.do_we_need_to_return_to_site as do_we_need_to_return_to_site,
    o132._dlt_id as dlt_id,
    o132._dlt_load_id as dlt_load_id,
    o132.created_at as created_at,
    o132.updated_at as updated_at
from o132
left join o132f1919 on o132._dlt_id = o132f1919._dlt_parent_id