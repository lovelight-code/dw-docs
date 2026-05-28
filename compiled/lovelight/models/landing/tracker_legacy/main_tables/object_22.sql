with
o22 as (select * from landing_tracker.object_22)

select
    o22.id as _id,
    o22.created,
    o22.updated,
    o22.field_189,
    o22.field_190,
    o22.field_192_date as field_192,
    o22.field_192_all_day as field_192__all_day,
    o22.field_946,
    o22.field_1483,
    o22.field_1929,
    o22.created_at,
    o22.updated_at,
    o22._dlt_load_id,
    o22._dlt_id,
    o22.field_431,
    o22.field_2248,
    o22.field_1951,
    false as deleted
from o22