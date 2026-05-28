with
o129 as (select * from landing_tracker.object_129)

select
    o129.id as _id,
    o129.created,
    o129.updated,
    o129.field_1886,
    o129.field_1875,
    o129.field_1876,
    o129.created_at,
    o129.updated_at,
    o129._dlt_load_id,
    o129._dlt_id,
    false as deleted
from o129