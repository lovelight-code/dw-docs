with
o113 as (select * from landing_tracker.object_113),
o113f1672 as (select _dlt_parent_id, max(value) as field_1672 from landing_tracker.object_113__field_1672 group by 1)

select
    o113.id as _id,
    o113.created,
    o113.updated,
    o113.field_1671,
    o113.field_1673,
    o113.created_at,
    o113.updated_at,
    o113._dlt_load_id,
    o113._dlt_id,
    o113f1672.field_1672,
    false as deleted
from o113
left join o113f1672 on o113._dlt_id = o113f1672._dlt_parent_id