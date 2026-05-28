with
o58 as (select * from landing_tracker.object_58)

select
    o58.id as _id,
    o58.created,
    o58.updated,
    o58.field_645,
    o58.field_643,
    o58.field_1928,
    o58.field_1952,
    o58.created_at,
    o58.updated_at,
    o58._dlt_load_id,
    o58._dlt_id,
    o58.field_1544,
    false as deleted
from o58