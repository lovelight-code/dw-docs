with
o164 as (select * from landing_tracker.object_164)

select
    o164.id as _id,
    o164.created,
    o164.updated,
    o164.field_2356,
    o164.field_2354,
    o164.field_2367,
    o164.field_2368,
    o164.created_at,
    o164.updated_at,
    o164._dlt_load_id,
    o164._dlt_id,
    false as deleted
from o164