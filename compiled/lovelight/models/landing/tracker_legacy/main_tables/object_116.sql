with
o116 as (select * from landing_tracker.object_116),
o116f1721 as (select _dlt_parent_id, max(value) as field_1721 from landing_tracker.object_116__field_1721 group by 1)

select
    o116.id as _id,
    o116.created,
    o116.updated,
    o116.field_1702,
    o116.field_1700,
    o116.field_1701,
    o116.field_1703,
    o116.field_1980,
    o116.field_1704,
    o116.field_1725,
    o116.field_1833,
    o116.created_at,
    o116.updated_at,
    o116._dlt_load_id,
    o116._dlt_id,
    o116f1721.field_1721,
    false as deleted
from o116
left join o116f1721 on o116._dlt_id = o116f1721._dlt_parent_id