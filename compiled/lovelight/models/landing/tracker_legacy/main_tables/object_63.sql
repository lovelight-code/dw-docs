with
o63 as (select * from landing_tracker.object_63),
o63f757 as (select _dlt_parent_id, max(value) as field_757 from landing_tracker.object_63__field_757 group by 1),
o63f764 as (select _dlt_parent_id, max(value) as field_764 from landing_tracker.object_63__field_764 group by 1)

select
    o63.id as _id,
    o63.created,
    o63.updated,
    o63.field_759,
    o63.field_1391,
    o63.field_1600,
    o63.field_754,
    o63.field_756,
    o63.field_854,
    o63.field_855,
    o63.field_856_date as field_856,
    o63.field_856_all_day as field_856__all_day,
    o63.field_857,
    o63.field_760_date as field_760,
    o63.field_760_all_day as field_760__all_day,
    o63.field_758_date as field_758,
    o63.field_758_all_day as field_758__all_day,
    o63.created_at,
    o63.updated_at,
    o63._dlt_load_id,
    o63._dlt_id,
    o63.field_765,
    o63f757.field_757,
    o63f764.field_764,
    false as deleted
from o63
left join o63f757 on o63._dlt_id = o63f757._dlt_parent_id
left join o63f764 on o63._dlt_id = o63f764._dlt_parent_id