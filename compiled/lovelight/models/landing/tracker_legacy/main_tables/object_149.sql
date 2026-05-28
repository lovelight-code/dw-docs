with
o149 as (select * from landing_tracker.object_149),
o149f2160 as (select _dlt_parent_id, max(value) as field_2160 from landing_tracker.object_149__field_2160 group by 1),
o149f2168 as (select _dlt_parent_id, max(value) as field_2168 from landing_tracker.object_149__field_2168 group by 1)

select
    o149.id as _id,
    o149.created,
    o149.updated,
    o149.field_3071,
    o149.field_2151,
    o149.field_2171,
    o149.field_2172_date as field_2172,
    o149.field_2172_all_day as field_2172__all_day,
    o149.field_2173,
    o149.field_2175_date as field_2175,
    o149.field_2175_all_day as field_2175__all_day,
    o149.field_2183,
    o149.field_2184,
    o149.field_2185_date as field_2185,
    o149.field_2185_all_day as field_2185__all_day,
    o149.field_2188_date as field_2188,
    o149.field_2188_all_day as field_2188__all_day,
    o149.field_2189,
    o149.field_2229,
    o149.created_at,
    o149.updated_at,
    o149._dlt_load_id,
    o149._dlt_id,
    o149.field_2172_to as field_2172__to,
    o149.field_2187,
    o149.field_2193,
    o149.field_2177_url as field_2177__url,
    o149f2160.field_2160,
    o149f2168.field_2168,
    false as deleted
from o149
left join o149f2160 on o149._dlt_id = o149f2160._dlt_parent_id
left join o149f2168 on o149._dlt_id = o149f2168._dlt_parent_id