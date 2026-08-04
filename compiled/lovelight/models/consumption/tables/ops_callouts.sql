

with co_base as (

    select
        call_out_sk,
        call_out_id,
        src_sys_id,
        form_display_name,
        callout_type,
        callout_status,
        state,
        business_unit,
        outcome,
        is_rescheduled,
        is_future,
        booking_priority,
        installer_report
    from "dw_dev"."processing_tracker"."dim_call_out"

),

co_facts as (

    select
        call_out_sk,
        date_dt,
        created_dt
    from "dw_dev"."processing_tracker"."fct_call_out"

)

select
    cb.call_out_id                           as id,
    cb.src_sys_id                            as callout_id,
    cf.date_dt                               as date,
    cf.created_dt                            as created_date,
    cb.form_display_name                     as callout,
    cb.business_unit,
    cb.state,
    cb.callout_type                          as type,
    cb.callout_status                        as status,
    cb.outcome,
    cb.is_rescheduled,
    cb.is_future,
    cb.booking_priority                      as priority,
    cb.installer_report
from co_base cb
left join co_facts cf
    on cb.call_out_sk = cf.call_out_sk