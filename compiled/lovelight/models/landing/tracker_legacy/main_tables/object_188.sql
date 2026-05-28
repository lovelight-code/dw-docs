with
o188 as (select * from landing_tracker.object_188)

select
    o188.id as _id,
    o188.created,
    o188.updated,
    o188.field_2705,
    o188.field_2703_date as field_2703,
    o188.field_2703_to as field_2703__to,
    o188.field_2703_all_day as field_2703__all_day,
    o188.field_2706,
    o188.created_at,
    o188.updated_at,
    o188._dlt_load_id,
    o188._dlt_id,
    false as deleted
from o188