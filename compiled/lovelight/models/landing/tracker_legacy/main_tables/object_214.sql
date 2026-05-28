with
o214 as (select * from landing_tracker.object_214),
o214f3114 as (select _dlt_parent_id, max(value) as field_3114 from landing_tracker.object_214__field_3114 group by 1)

select
    o214.id as _id,
    o214.created,
    o214.updated,
    o214.field_3120,
    o214.field_3121,
    o214.created_at,
    o214.updated_at,
    o214._dlt_load_id,
    o214._dlt_id,
    o214f3114.field_3114,
    false as deleted
from o214
left join o214f3114 on o214._dlt_id = o214f3114._dlt_parent_id