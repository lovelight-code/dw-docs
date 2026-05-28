with
o112 as (select * from landing_tracker.object_112)

select
    o112.id as _id,
    o112.created,
    o112.updated,
    o112.field_1657,
    o112.field_1699,
    o112.field_1658,
    o112.field_2284,
    o112.created_at,
    o112.updated_at,
    o112._dlt_load_id,
    o112._dlt_id,
    false as deleted
from o112