with
o196 as (select * from landing_tracker.object_196)

select
    o196.id as _id,
    o196.created,
    o196.updated,
    o196.field_2810,
    o196.created_at,
    o196.updated_at,
    o196._dlt_load_id,
    o196._dlt_id,
    false as deleted
from o196