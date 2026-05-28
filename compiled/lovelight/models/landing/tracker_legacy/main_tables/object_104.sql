with
o104 as (select * from landing_tracker.object_104)

select
    o104.id as _id,
    o104.created,
    o104.updated,
    o104.created_at,
    o104.updated_at,
    o104._dlt_load_id,
    o104._dlt_id,
    false as deleted
from o104