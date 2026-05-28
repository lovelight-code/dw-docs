with
o198 as (select * from landing_tracker.object_198),
o198f2877 as (select _dlt_parent_id, max(value) as field_2877 from landing_tracker.object_198__field_2877 group by 1),
o198f2892 as (select _dlt_parent_id, max(value) as field_2892 from landing_tracker.object_198__field_2892 group by 1),
o198f2922 as (select _dlt_parent_id, max(value) as field_2922 from landing_tracker.object_198__field_2922 group by 1)

select
    o198.id as _id,
    o198.created,
    o198.updated,
    o198.field_2910,
    o198.field_2911_date as field_2911,
    o198.field_2911_all_day as field_2911__all_day,
    o198.field_2871,
    o198.field_2881,
    o198.field_2874,
    o198.field_2876,
    o198.field_2873,
    o198.field_2879,
    o198.field_2880,
    o198.field_2900,
    o198.field_3146,
    o198.created_at,
    o198.updated_at,
    o198._dlt_load_id,
    o198._dlt_id,
    o198.field_2872,
    o198.field_2878,
    o198f2877.field_2877,
    o198f2892.field_2892,
    o198f2922.field_2922,
    false as deleted
from o198
left join o198f2877 on o198._dlt_id = o198f2877._dlt_parent_id
left join o198f2892 on o198._dlt_id = o198f2892._dlt_parent_id
left join o198f2922 on o198._dlt_id = o198f2922._dlt_parent_id