with
o182 as (select * from landing_tracker.object_182)

select
    o182.id as _id,
    o182.created,
    o182.updated,
    o182.field_2686,
    o182.field_2679,
    o182.field_2680,
    o182.field_2687_date as field_2687,
    o182.field_2687_all_day as field_2687__all_day,
    o182.created_at,
    o182.updated_at,
    o182._dlt_load_id,
    o182._dlt_id,
    o182.field_2646,
    false as deleted
from o182