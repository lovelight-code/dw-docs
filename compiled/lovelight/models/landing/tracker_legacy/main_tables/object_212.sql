with
o212 as (select * from landing_tracker.object_212),
o212f3087 as (select _dlt_parent_id, max(value) as field_3087 from landing_tracker.object_212__field_3087 group by 1)

select
    o212.id as _id,
    o212.created,
    o212.updated,
    o212.field_3079,
    o212.field_3080_date as field_3080,
    o212.field_3080_all_day as field_3080__all_day,
    o212.field_3085,
    o212.created_at,
    o212.updated_at,
    o212._dlt_load_id,
    o212._dlt_id,
    o212f3087.field_3087,
    false as deleted
from o212
left join o212f3087 on o212._dlt_id = o212f3087._dlt_parent_id