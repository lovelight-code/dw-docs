with
o33 as (select * from landing_tracker.object_33)

select
    o33.id as _id,
    o33.created,
    o33.updated,
    o33.field_321,
    o33.field_322,
    o33.created_at,
    o33.updated_at,
    o33._dlt_load_id,
    o33._dlt_id,
    o33.field_324,
    false as deleted
from o33