

select
    i.installer_sk,
    i.installer_id,
    i.src_sys_cd,
    i.first_name,
    i.last_name,
    i.full_name,
    i.email,
    i.mobile_number,
    i.is_subcontractor,
    i.hex_display_color_code,
    i.color_key,
    i.hd_delivery_code,
    i.get_tentative_invite,
    i.is_custom,
    i.src_created_at,
    i.src_updated_at

from "dw_dev"."processing_tracker"."dim_installer" i
where i.test_record is distinct from true