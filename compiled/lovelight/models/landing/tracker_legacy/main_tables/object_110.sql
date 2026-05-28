with
o110 as (select * from landing_tracker.object_110)

select
    o110.id as _id,
    o110.created,
    o110.updated,
    o110.field_1574,
    o110.created_at,
    o110.updated_at,
    o110._dlt_load_id,
    o110._dlt_id,
    false as deleted
from o110