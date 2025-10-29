select
    current_timestamp() as load_time,
    current_user() as loaded_by,
    current_role() as active_role
