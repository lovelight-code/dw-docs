with
o187 as (select * from landing_tracker.object_187)

select
    o187.id as _id,
    o187.created,
    o187.updated,
    o187.field_2666,
    o187.field_2683,
    o187.field_2665,
    o187.field_2667,
    o187.field_2674_date as field_2674,
    o187.field_2674_all_day as field_2674__all_day,
    o187.field_2675,
    o187.created_at,
    o187.updated_at,
    o187._dlt_load_id,
    o187._dlt_id,
    false as deleted
from o187