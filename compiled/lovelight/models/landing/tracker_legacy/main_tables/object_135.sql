with
o135 as (select * from landing_tracker.object_135)

select
    o135.id as _id,
    o135.created,
    o135.updated,
    o135.field_1934,
    o135.field_1938,
    o135.created_at,
    o135.updated_at,
    o135._dlt_load_id,
    o135._dlt_id,
    o135.field_1939,
    false as deleted
from o135