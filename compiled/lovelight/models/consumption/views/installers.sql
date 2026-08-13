

select
    installer_sk,
    installer_id,
    first_name,
    last_name,
    full_name,
    email,
    mobile_number,
    is_subcontractor,
    hex_display_color_code,
    color_key,
    hd_delivery_code,
    get_tentative_invite,
    is_custom
from "dw_dev"."consumption"."ops_installers"