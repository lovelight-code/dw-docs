

with tracker_job_link as (
    select distinct quoterite_job_id
    from "dw_dev"."processing_tracker"."dim_job"
    where quoterite_job_id is not null
)

select
    d.order_sk,
    d.order_id,
    d.order_unique_id,
    d.order_sidemark,
    d.order_status_name,
    d.quote_unique_id,
    d.quote_sidemark,
    d.company_name,
    d.sales_rep,
    d.email,
    d.mobile_number,
    d.tracking_status,
    d.ordering_status,
    fo.order_created,
    fo.order_value,
    fo.order_value_ex_gst,
    fo.quote_created,
    vls.email                                        as sales_email,
    case when s.is_reported_sale then true else false end as is_reported_sale,
    (tjl.quoterite_job_id is not null)               as has_tracker_job

from "dw_dev"."processing_quoterite"."dim_order" d
left join "dw_dev"."processing_quoterite"."fct_order" fo
    on d.order_sk = fo.order_sk
left join utils.v_lovelight_sales vls
    on vls.employee = d.sales_rep
left join "dw_dev"."processing_tracker"."dim_salespeople" s
    on s.email = vls.email
left join tracker_job_link tjl
    on tjl.quoterite_job_id = d.order_unique_id