with
o14 as (select * from landing_tracker.object_14)

select
    o14.id as _id,
    o14.created,
    o14.updated,
    o14.field_86,
    o14.field_178,
    o14.field_270,
    o14.field_304,
    o14.field_305,
    o14.created_at,
    o14.updated_at,
    o14._dlt_load_id,
    o14._dlt_id,
    false as deleted
from o14