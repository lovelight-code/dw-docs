with
o153 as (select * from landing_tracker.object_153)

select
    o153.id as _id,
    o153.created,
    o153.updated,
    o153.field_2225,
    o153.field_2227,
    o153.created_at,
    o153.updated_at,
    o153._dlt_load_id,
    o153._dlt_id,
    false as deleted
from o153