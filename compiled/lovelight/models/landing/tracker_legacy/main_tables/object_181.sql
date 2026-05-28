with
o181 as (select * from landing_tracker.object_181)

select
    o181.id as _id,
    o181.created,
    o181.updated,
    o181.field_2622,
    o181.field_2615,
    o181.field_2618,
    o181.field_2619,
    o181.created_at,
    o181.updated_at,
    o181._dlt_load_id,
    o181._dlt_id,
    false as deleted
from o181