with
o147 as (select * from landing_tracker.object_147)

select
    o147.id as _id,
    o147.created,
    o147.updated,
    o147.field_2129,
    o147.created_at,
    o147.updated_at,
    o147._dlt_load_id,
    o147._dlt_id,
    false as deleted
from o147