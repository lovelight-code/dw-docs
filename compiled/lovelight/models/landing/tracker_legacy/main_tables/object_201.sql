with
o201 as (select * from landing_tracker.object_201)

select
    o201.id as _id,
    o201.created,
    o201.updated,
    o201.field_2906,
    o201.field_2923,
    o201.created_at,
    o201.updated_at,
    o201._dlt_load_id,
    o201._dlt_id,
    false as deleted
from o201