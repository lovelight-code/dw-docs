with
o162 as (select * from landing_tracker.object_162),
o162f2312 as (select _dlt_parent_id, max(value) as field_2312 from landing_tracker.object_162__field_2312 group by 1),
o162f2313 as (select _dlt_parent_id, max(value) as field_2313 from landing_tracker.object_162__field_2313 group by 1),
o162f2314 as (select _dlt_parent_id, max(value) as field_2314 from landing_tracker.object_162__field_2314 group by 1),
o162f2315 as (select _dlt_parent_id, max(value) as field_2315 from landing_tracker.object_162__field_2315 group by 1),
o162f2316 as (select _dlt_parent_id, max(value) as field_2316 from landing_tracker.object_162__field_2316 group by 1),
o162f2317 as (select _dlt_parent_id, max(value) as field_2317 from landing_tracker.object_162__field_2317 group by 1),
o162f2318 as (select _dlt_parent_id, max(value) as field_2318 from landing_tracker.object_162__field_2318 group by 1),
o162f2319 as (select _dlt_parent_id, max(value) as field_2319 from landing_tracker.object_162__field_2319 group by 1),
o162f2361 as (select _dlt_parent_id, max(value) as field_2361 from landing_tracker.object_162__field_2361 group by 1),
o162f2397 as (select _dlt_parent_id, max(value) as field_2397 from landing_tracker.object_162__field_2397 group by 1),
o162f2398 as (select _dlt_parent_id, max(value) as field_2398 from landing_tracker.object_162__field_2398 group by 1),
o162f2399 as (select _dlt_parent_id, max(value) as field_2399 from landing_tracker.object_162__field_2399 group by 1),
o162f2400 as (select _dlt_parent_id, max(value) as field_2400 from landing_tracker.object_162__field_2400 group by 1),
o162f2401 as (select _dlt_parent_id, max(value) as field_2401 from landing_tracker.object_162__field_2401 group by 1),
o162f2402 as (select _dlt_parent_id, max(value) as field_2402 from landing_tracker.object_162__field_2402 group by 1),
o162f2403 as (select _dlt_parent_id, max(value) as field_2403 from landing_tracker.object_162__field_2403 group by 1),
o162f2404 as (select _dlt_parent_id, max(value) as field_2404 from landing_tracker.object_162__field_2404 group by 1),
o162f2405 as (select _dlt_parent_id, max(value) as field_2405 from landing_tracker.object_162__field_2405 group by 1),
o162f2415 as (select _dlt_parent_id, max(value) as field_2415 from landing_tracker.object_162__field_2415 group by 1),
o162f2416 as (select _dlt_parent_id, max(value) as field_2416 from landing_tracker.object_162__field_2416 group by 1),
o162f2417 as (select _dlt_parent_id, max(value) as field_2417 from landing_tracker.object_162__field_2417 group by 1),
o162f2418 as (select _dlt_parent_id, max(value) as field_2418 from landing_tracker.object_162__field_2418 group by 1),
o162f2420 as (select _dlt_parent_id, max(value) as field_2420 from landing_tracker.object_162__field_2420 group by 1),
o162f2428 as (select _dlt_parent_id, max(value) as field_2428 from landing_tracker.object_162__field_2428 group by 1),
o162f2429 as (select _dlt_parent_id, max(value) as field_2429 from landing_tracker.object_162__field_2429 group by 1)

select
    o162.id as _id,
    o162.created,
    o162.updated,
    o162.field_2304,
    o162.field_2303,
    o162.field_2309_date as field_2309,
    o162.field_2309_all_day as field_2309__all_day,
    o162.field_2310_date as field_2310,
    o162.field_2310_all_day as field_2310__all_day,
    o162.field_2327_date as field_2327,
    o162.field_2327_all_day as field_2327__all_day,
    o162.field_2359,
    o162.field_2494,
    o162.created_at,
    o162.updated_at,
    o162._dlt_load_id,
    o162._dlt_id,
    o162.field_2357,
    o162.field_2360,
    o162.field_2381_base30 as field_2381__base30,
    o162.field_2381_svg as field_2381__svg,
    o162f2312.field_2312,
    o162f2313.field_2313,
    o162f2314.field_2314,
    o162f2315.field_2315,
    o162f2316.field_2316,
    o162f2317.field_2317,
    o162f2318.field_2318,
    o162f2319.field_2319,
    o162f2361.field_2361,
    o162f2397.field_2397,
    o162f2398.field_2398,
    o162f2399.field_2399,
    o162f2400.field_2400,
    o162f2401.field_2401,
    o162f2402.field_2402,
    o162f2403.field_2403,
    o162f2404.field_2404,
    o162f2405.field_2405,
    o162f2415.field_2415,
    o162f2416.field_2416,
    o162f2417.field_2417,
    o162f2418.field_2418,
    o162f2420.field_2420,
    o162f2428.field_2428,
    o162f2429.field_2429,
    false as deleted
from o162
left join o162f2312 on o162._dlt_id = o162f2312._dlt_parent_id
left join o162f2313 on o162._dlt_id = o162f2313._dlt_parent_id
left join o162f2314 on o162._dlt_id = o162f2314._dlt_parent_id
left join o162f2315 on o162._dlt_id = o162f2315._dlt_parent_id
left join o162f2316 on o162._dlt_id = o162f2316._dlt_parent_id
left join o162f2317 on o162._dlt_id = o162f2317._dlt_parent_id
left join o162f2318 on o162._dlt_id = o162f2318._dlt_parent_id
left join o162f2319 on o162._dlt_id = o162f2319._dlt_parent_id
left join o162f2361 on o162._dlt_id = o162f2361._dlt_parent_id
left join o162f2397 on o162._dlt_id = o162f2397._dlt_parent_id
left join o162f2398 on o162._dlt_id = o162f2398._dlt_parent_id
left join o162f2399 on o162._dlt_id = o162f2399._dlt_parent_id
left join o162f2400 on o162._dlt_id = o162f2400._dlt_parent_id
left join o162f2401 on o162._dlt_id = o162f2401._dlt_parent_id
left join o162f2402 on o162._dlt_id = o162f2402._dlt_parent_id
left join o162f2403 on o162._dlt_id = o162f2403._dlt_parent_id
left join o162f2404 on o162._dlt_id = o162f2404._dlt_parent_id
left join o162f2405 on o162._dlt_id = o162f2405._dlt_parent_id
left join o162f2415 on o162._dlt_id = o162f2415._dlt_parent_id
left join o162f2416 on o162._dlt_id = o162f2416._dlt_parent_id
left join o162f2417 on o162._dlt_id = o162f2417._dlt_parent_id
left join o162f2418 on o162._dlt_id = o162f2418._dlt_parent_id
left join o162f2420 on o162._dlt_id = o162f2420._dlt_parent_id
left join o162f2428 on o162._dlt_id = o162f2428._dlt_parent_id
left join o162f2429 on o162._dlt_id = o162f2429._dlt_parent_id