with
o131 as (select * from landing_tracker.object_131)

select
    o131.id as _id,
    o131.created,
    o131.updated,
    o131.field_1897,
    o131.created_at,
    o131.updated_at,
    o131._dlt_load_id,
    o131._dlt_id,
    false as deleted
from o131