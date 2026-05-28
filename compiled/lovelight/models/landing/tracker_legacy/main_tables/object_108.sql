with
o108 as (select * from landing_tracker.object_108)

select
    o108.id as _id,
    o108.created,
    o108.updated,
    o108.field_1566,
    o108.created_at,
    o108.updated_at,
    o108._dlt_load_id,
    o108._dlt_id,
    false as deleted
from o108