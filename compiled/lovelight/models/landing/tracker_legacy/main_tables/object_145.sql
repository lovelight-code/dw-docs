with
o145 as (select * from landing_tracker.object_145)

select
    o145.id as _id,
    o145.created,
    o145.updated,
    o145.field_2120,
    o145.field_2123,
    o145.created_at,
    o145.updated_at,
    o145._dlt_load_id,
    o145._dlt_id,
    false as deleted
from o145