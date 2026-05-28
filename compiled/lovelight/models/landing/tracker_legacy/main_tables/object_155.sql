with
o155 as (select * from landing_tracker.object_155),
o155f2242 as (select _dlt_parent_id, max(value) as field_2242 from landing_tracker.object_155__field_2242 group by 1),
o155f2297 as (select _dlt_parent_id, max(value) as field_2297 from landing_tracker.object_155__field_2297 group by 1),
o155f2440 as (select _dlt_parent_id, max(value) as field_2440 from landing_tracker.object_155__field_2440 group by 1)

select
    o155.id as _id,
    o155.created,
    o155.updated,
    o155.field_2245,
    o155.field_2244,
    o155.created_at,
    o155.updated_at,
    o155._dlt_load_id,
    o155._dlt_id,
    o155.field_2243,
    o155f2242.field_2242,
    o155f2297.field_2297,
    o155f2440.field_2440,
    false as deleted
from o155
left join o155f2242 on o155._dlt_id = o155f2242._dlt_parent_id
left join o155f2297 on o155._dlt_id = o155f2297._dlt_parent_id
left join o155f2440 on o155._dlt_id = o155f2440._dlt_parent_id