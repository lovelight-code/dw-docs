with
o141 as (select * from landing_tracker.object_141),
o141f2031 as (select _dlt_parent_id, max(value) as field_2031 from landing_tracker.object_141__field_2031 group by 1)

select
    o141.id as _id,
    o141.created,
    o141.updated,
    o141.field_2030,
    o141.field_2032_date as field_2032,
    o141.field_2032_all_day as field_2032__all_day,
    o141.field_2033,
    o141.created_at,
    o141.updated_at,
    o141._dlt_load_id,
    o141._dlt_id,
    o141f2031.field_2031,
    false as deleted
from o141
left join o141f2031 on o141._dlt_id = o141f2031._dlt_parent_id