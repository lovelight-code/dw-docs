with
o206 as (select * from landing_tracker.object_206)

select
    o206.id as _id,
    o206.created,
    o206.updated,
    o206.field_2964,
    o206.created_at,
    o206.updated_at,
    o206._dlt_load_id,
    o206._dlt_id,
    false as deleted
from o206