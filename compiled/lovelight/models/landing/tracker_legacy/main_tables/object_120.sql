with
o120 as (select * from landing_tracker.object_120)

select
    o120.id as _id,
    o120.created,
    o120.updated,
    o120.field_1750,
    o120.field_1752,
    o120.created_at,
    o120.updated_at,
    o120._dlt_load_id,
    o120._dlt_id,
    false as deleted
from o120