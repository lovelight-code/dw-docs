with
o61 as (select * from landing_tracker.object_61)

select
    o61.id as _id,
    o61.created,
    o61.updated,
    o61.field_707,
    o61.field_708,
    o61.field_709,
    o61.field_710_date as field_710,
    o61.field_710_all_day as field_710__all_day,
    o61.created_at,
    o61.updated_at,
    o61._dlt_load_id,
    o61._dlt_id,
    false as deleted
from o61