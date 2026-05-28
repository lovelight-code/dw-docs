with
o68 as (select * from landing_tracker.object_68),
o68f816 as (select _dlt_parent_id, max(value) as field_816 from landing_tracker.object_68__field_816 group by 1),
o68f817 as (select _dlt_parent_id, max(value) as field_817 from landing_tracker.object_68__field_817 group by 1)

select
    o68.id as _id,
    o68.created,
    o68.updated,
    o68.user_id,
    o68.utility_key,
    o68.approval_status,
    o68.account_status,
    o68.field_813_first as field_813__first,
    o68.field_813_last as field_813__last,
    o68.field_813_full as field_813__full,
    o68.field_2820,
    o68.field_814_email as field_814__email,
    o68.field_814_label as field_814__label,
    o68.field_815,
    o68.field_1597,
    o68.field_1604_number as field_1604__number,
    o68.field_1604_full as field_1604__full,
    o68.field_1605,
    o68.field_2018,
    o68.created_at,
    o68.updated_at,
    o68._dlt_load_id,
    o68._dlt_id,
    o68f816.field_816,
    o68f817.field_817,
    false as deleted
from o68
left join o68f816 on o68._dlt_id = o68f816._dlt_parent_id
left join o68f817 on o68._dlt_id = o68f817._dlt_parent_id