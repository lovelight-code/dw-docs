with
o124 as (select * from landing_tracker.object_124)

select
    o124.id as _id,
    o124.created,
    o124.updated,
    o124.field_1832,
    o124.field_1829,
    o124.field_1830,
    o124.created_at,
    o124.updated_at,
    o124._dlt_load_id,
    o124._dlt_id,
    false as deleted
from o124