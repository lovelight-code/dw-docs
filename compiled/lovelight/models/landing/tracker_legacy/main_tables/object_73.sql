with
o73 as (select * from landing_tracker.object_73),
o73f883 as (select _dlt_parent_id, max(value) as field_883 from landing_tracker.object_73__field_883 group by 1),
o73f884 as (select _dlt_parent_id, max(value) as field_884 from landing_tracker.object_73__field_884 group by 1)

select
    o73.id as _id,
    o73.created,
    o73.updated,
    o73.user_id,
    o73.utility_key,
    o73.approval_status,
    o73.account_status,
    o73.field_880_first as field_880__first,
    o73.field_880_last as field_880__last,
    o73.field_880_full as field_880__full,
    o73.field_881_email as field_881__email,
    o73.field_881_label as field_881__label,
    o73.field_882,
    o73.created_at,
    o73.updated_at,
    o73._dlt_load_id,
    o73._dlt_id,
    o73f883.field_883,
    o73f884.field_884,
    false as deleted
from o73
left join o73f883 on o73._dlt_id = o73f883._dlt_parent_id
left join o73f884 on o73._dlt_id = o73f884._dlt_parent_id