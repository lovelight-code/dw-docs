

-- ============================================================
-- Model: dim_installer
-- Description: Installer dimension containing slowly changing descriptive attributes.
-- Source: installer (snapshot model)
-- ============================================================

with current as (
    select * from "dw_dev"."history_tracker"."installer"
    where dbt_valid_to is null
)

select
    md5(id::varchar) as installer_sk,
    id as installer_id,
    name_first as first_name,
    name_last as last_name,
    name_full as full_name,
    email_email as email,
    sub_contractor as is_subcontractor,
    mobile_61_format as mobile_number,
    hex_display_colour_code as hex_display_color_code,
    colour_key as color_key,
    hd_delivery_code,
    test_record,
    get_tentative_invite,
    is_custom,
    'KNACK' as src_sys_cd,
    null as src_sys_id,
    src_created_at,
    src_updated_at,
    (case when dbt_valid_to is null then true else false end) as is_current,
    current_timestamp as proc_created_at,
    current_timestamp as proc_updated_at,
    'b5f758a6-fcbe-479a-a1a0-a2dd8a04fba5' as load_run_id
from current