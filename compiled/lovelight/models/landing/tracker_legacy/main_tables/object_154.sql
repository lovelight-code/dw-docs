with
o154 as (select * from landing_tracker.object_154)

select
    o154.id as _id,
    o154.created,
    o154.updated,
    o154.field_2228,
    o154.created_at,
    o154.updated_at,
    o154._dlt_load_id,
    o154._dlt_id,
    false as deleted
from o154