with
o208 as (select * from landing_tracker.object_208)

select
    o208.id as _id,
    o208.created,
    o208.updated,
    o208.field_2988,
    o208.field_3003_date as field_3003,
    o208.field_3003_all_day as field_3003__all_day,
    o208.field_3009,
    o208.field_2991,
    o208.field_3011,
    o208.field_2995,
    o208.field_2996,
    o208.field_3012,
    o208.field_3010,
    o208.field_3013,
    o208.field_3014,
    o208.field_3005,
    o208.field_3006,
    o208.field_3007,
    o208.field_3008,
    o208.field_3019,
    o208.created_at,
    o208.updated_at,
    o208._dlt_load_id,
    o208._dlt_id,
    o208.field_3004,
    false as deleted
from o208