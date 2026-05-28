with
o126 as (select * from landing_tracker.object_126)

select
    o126.id as _id,
    o126.created,
    o126.updated,
    o126.field_1901,
    o126.field_1855,
    o126.field_1856,
    o126.field_1877,
    o126.created_at,
    o126.updated_at,
    o126._dlt_load_id,
    o126._dlt_id,
    false as deleted
from o126