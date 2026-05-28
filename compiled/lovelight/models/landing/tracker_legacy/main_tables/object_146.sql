with
o146 as (select * from landing_tracker.object_146)

select
    o146.id as _id,
    o146.created,
    o146.updated,
    o146.field_2128,
    o146.field_2132,
    o146.field_2299,
    o146.field_2300,
    o146.created_at,
    o146.updated_at,
    o146._dlt_load_id,
    o146._dlt_id,
    false as deleted
from o146