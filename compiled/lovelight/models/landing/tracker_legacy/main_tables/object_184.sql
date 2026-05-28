with
o184 as (select * from landing_tracker.object_184)

select
    o184.id as _id,
    o184.created,
    o184.updated,
    o184.field_2652,
    o184.field_2655,
    o184.created_at,
    o184.updated_at,
    o184._dlt_load_id,
    o184._dlt_id,
    false as deleted
from o184