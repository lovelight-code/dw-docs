with
o60 as (select * from landing_tracker.object_60)

select
    o60.id as _id,
    o60.created,
    o60.updated,
    o60.field_703,
    o60.field_712,
    o60.field_704,
    o60.field_702,
    o60.field_705_date as field_705,
    o60.field_705_all_day as field_705__all_day,
    o60.created_at,
    o60.updated_at,
    o60._dlt_load_id,
    o60._dlt_id,
    false as deleted
from o60