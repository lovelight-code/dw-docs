with
o32 as (select * from landing_tracker.object_32)

select
    o32.id as _id,
    o32.created,
    o32.updated,
    o32.field_300,
    o32.field_303,
    o32.field_1950,
    o32.created_at,
    o32.updated_at,
    o32._dlt_load_id,
    o32._dlt_id,
    false as deleted
from o32