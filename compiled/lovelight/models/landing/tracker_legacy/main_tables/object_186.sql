with
o186 as (select * from landing_tracker.object_186)

select
    o186.id as _id,
    o186.created,
    o186.updated,
    o186.field_2656,
    o186.created_at,
    o186.updated_at,
    o186._dlt_load_id,
    o186._dlt_id,
    false as deleted
from o186