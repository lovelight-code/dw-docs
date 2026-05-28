with
o83 as (select * from landing_tracker.object_83)

select
    o83.id as _id,
    o83.created,
    o83.updated,
    o83.field_966,
    o83.field_1382,
    o83.created_at,
    o83.updated_at,
    o83._dlt_load_id,
    o83._dlt_id,
    false as deleted
from o83