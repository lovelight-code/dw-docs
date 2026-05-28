with
o114 as (select * from landing_tracker.object_114),
o114f1688 as (select _dlt_parent_id, max(value) as field_1688 from landing_tracker.object_114__field_1688 group by 1),
o114f1711 as (select _dlt_parent_id, max(value) as field_1711 from landing_tracker.object_114__field_1711 group by 1),
o114f1743 as (select _dlt_parent_id, max(value) as field_1743 from landing_tracker.object_114__field_1743 group by 1),
o114f2156 as (select _dlt_parent_id, max(value) as field_2156 from landing_tracker.object_114__field_2156 group by 1)

select
    o114.id as _id,
    o114.created,
    o114.updated,
    o114.field_1694,
    o114.field_1709_date as field_1709,
    o114.field_1709_all_day as field_1709__all_day,
    o114.field_1710,
    o114.field_1707_date as field_1707,
    o114.field_1707_all_day as field_1707__all_day,
    o114.field_1687_date as field_1687,
    o114.field_1687_all_day as field_1687__all_day,
    o114.field_1708_date as field_1708,
    o114.field_1708_all_day as field_1708__all_day,
    o114.field_1714_date as field_1714,
    o114.field_1714_all_day as field_1714__all_day,
    o114.field_1691,
    o114.field_1696,
    o114.field_1686_date as field_1686,
    o114.field_1686_all_day as field_1686__all_day,
    o114.field_2162,
    o114.field_2369,
    o114.field_2370,
    o114.field_2371,
    o114.field_2463,
    o114.created_at,
    o114.updated_at,
    o114._dlt_load_id,
    o114._dlt_id,
    o114.field_1947,
    o114.field_1687_to as field_1687__to,
    o114f1688.field_1688,
    o114f1711.field_1711,
    o114f1743.field_1743,
    o114f2156.field_2156,
    false as deleted
from o114
left join o114f1688 on o114._dlt_id = o114f1688._dlt_parent_id
left join o114f1711 on o114._dlt_id = o114f1711._dlt_parent_id
left join o114f1743 on o114._dlt_id = o114f1743._dlt_parent_id
left join o114f2156 on o114._dlt_id = o114f2156._dlt_parent_id