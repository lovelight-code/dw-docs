with
o53 as (select * from landing_tracker.object_53),
o53f1666 as (select _dlt_parent_id, max(value) as field_1666 from landing_tracker.object_53__field_1666 group by 1),
o53f1667 as (select _dlt_parent_id, max(value) as field_1667 from landing_tracker.object_53__field_1667 group by 1)

select
    o53.id as _id,
    o53.created,
    o53.updated,
    o53.field_1320,
    o53.field_576,
    o53.field_1655,
    o53.field_578_date as field_578,
    o53.field_578_all_day as field_578__all_day,
    o53.field_2287,
    o53.created_at,
    o53.updated_at,
    o53._dlt_load_id,
    o53._dlt_id,
    o53.field_1664_date as field_1664,
    o53.field_1664_all_day as field_1664__all_day,
    o53.field_1850,
    o53.field_1851,
    o53.field_1995_date as field_1995,
    o53.field_1995_all_day as field_1995__all_day,
    o53.field_2580,
    o53f1666.field_1666,
    o53f1667.field_1667,
    false as deleted
from o53
left join o53f1666 on o53._dlt_id = o53f1666._dlt_parent_id
left join o53f1667 on o53._dlt_id = o53f1667._dlt_parent_id