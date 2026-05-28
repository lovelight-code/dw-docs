with
o107 as (select * from landing_tracker.object_107)

select
    o107.id as _id,
    o107.created,
    o107.updated,
    o107.field_1557,
    o107.field_3134,
    o107.created_at,
    o107.updated_at,
    o107._dlt_load_id,
    o107._dlt_id,
    false as deleted
from o107