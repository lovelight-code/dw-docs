with
o41 as (select * from landing_tracker.object_41)

select
    o41.id as _id,
    o41.created,
    o41.updated,
    o41.field_435,
    o41.field_440,
    o41.field_445,
    o41.created_at,
    o41.updated_at,
    o41._dlt_load_id,
    o41._dlt_id,
    false as deleted
from o41