with
o190 as (select * from landing_tracker.object_190)

select
    o190.id as _id,
    o190.created,
    o190.updated,
    o190.field_2751,
    o190.field_2742,
    o190.field_2748_date as field_2748,
    o190.field_2748_all_day as field_2748__all_day,
    o190.field_2743_date as field_2743,
    o190.field_2743_all_day as field_2743__all_day,
    o190.field_2759_date as field_2759,
    o190.field_2759_all_day as field_2759__all_day,
    o190.created_at,
    o190.updated_at,
    o190._dlt_load_id,
    o190._dlt_id,
    o190.field_2747_date as field_2747,
    o190.field_2747_all_day as field_2747__all_day,
    o190.field_2749,
    false as deleted
from o190