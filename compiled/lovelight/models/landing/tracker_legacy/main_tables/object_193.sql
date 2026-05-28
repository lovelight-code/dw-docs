with
o193 as (select * from landing_tracker.object_193),
o193f2793 as (select _dlt_parent_id, max(value) as field_2793 from landing_tracker.object_193__field_2793 group by 1)

select
    o193.id as _id,
    o193.created,
    o193.updated,
    o193.field_2785,
    o193.field_2786,
    o193.field_2794,
    o193.field_2795,
    o193.created_at,
    o193.updated_at,
    o193._dlt_load_id,
    o193._dlt_id,
    o193f2793.field_2793,
    false as deleted
from o193
left join o193f2793 on o193._dlt_id = o193f2793._dlt_parent_id