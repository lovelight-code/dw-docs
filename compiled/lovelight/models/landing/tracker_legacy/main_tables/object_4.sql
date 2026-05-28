with
o4 as (select * from landing_tracker.object_4),
o4f786 as (select _dlt_parent_id, max(value) as field_786 from landing_tracker.object_4__field_786 group by 1)

select
    o4.id as _id,
    o4.created,
    o4.updated,
    o4.field_8,
    o4.field_289,
    o4.field_902,
    o4.created_at,
    o4.updated_at,
    o4._dlt_load_id,
    o4._dlt_id,
    o4f786.field_786,
    false as deleted
from o4
left join o4f786 on o4._dlt_id = o4f786._dlt_parent_id