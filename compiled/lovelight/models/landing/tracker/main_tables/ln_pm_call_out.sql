-- ============================================================
-- Model: ln_pm_call_out
-- Description: Landing-layer view that flattens object_149
--              and its subtables into one record per pm_call_out.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_149 table
-- ------------------------------------------------------------
o149 as (
    select *
    from landing_tracker.object_149
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_149__field_2160
-- ------------------------------------------------------------
o149f2160 as (
    select
        _dlt_parent_id,
        max(value) as site_visit_type
    from landing_tracker.object_149__field_2160
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_149__field_2168
-- ------------------------------------------------------------
o149f2168 as (
    select
        _dlt_parent_id,
        max(value) as status
    from landing_tracker.object_149__field_2168
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o149.id,
    o149.created as src_created_at,
    o149.updated as src_updated_at,
    o149.field_2151 as call_out_name,
    o149.field_2171 as confirmed,
    o149.field_2172_all_day as date_and_time_user_entry_all_day,
    o149.field_2172_date as date_and_time_user_entry_date,
    o149.field_2172_to as date_and_time_user_entry_to,
    o149.field_2173 as requested_note,
    o149.field_2175_all_day as completed_date_all_day,
    o149.field_2175_date as completed_date,
    o149.field_2177_url as gantt_chart_url,
    o149.field_2183 as reason_for_rejection,
    o149.field_2184 as rejected,
    o149.field_2185_all_day as rejected_date_all_day,
    o149.field_2185_date as rejected_date,
    o149.field_2187 as g_cal_event_id,
    o149.field_2188_all_day as short_date_and_time_user_entry_all_day,
    o149.field_2188_date as short_date_and_time_user_entry_date,
    o149.field_2189 as g_cal_update_required,
    o149.field_2193 as completed_note,
    o149.field_2229 as deleted,
    o149.field_3071 as src_sys_id,
    o149f2160.site_visit_type as site_visit_type,
    o149f2168.status as status,
    o149._dlt_id as dlt_id,
    o149._dlt_load_id as dlt_load_id,
    o149.created_at as created_at,
    o149.updated_at as updated_at
from o149
left join o149f2160 on o149._dlt_id = o149f2160._dlt_parent_id
left join o149f2168 on o149._dlt_id = o149f2168._dlt_parent_id