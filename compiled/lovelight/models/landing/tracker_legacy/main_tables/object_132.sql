with
o132 as (select * from landing_tracker.object_132),
o132f1919 as (select _dlt_parent_id, max(value) as field_1919 from landing_tracker.object_132__field_1919 group by 1)

select
    o132.id as _id,
    o132.created,
    o132.updated,
    o132.field_1910,
    o132.field_1933,
    o132.field_1911,
    o132.field_1927,
    o132.created_at,
    o132.updated_at,
    o132._dlt_load_id,
    o132._dlt_id,
    o132.field_1940,
    o132f1919.field_1919,
    false as deleted
from o132
left join o132f1919 on o132._dlt_id = o132f1919._dlt_parent_id