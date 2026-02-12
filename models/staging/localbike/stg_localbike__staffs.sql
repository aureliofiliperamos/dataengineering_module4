SELECT staff_id,
    UPPER(first_name) AS first_name,
    UPPER(last_name) AS last_name,
    email,
    phone,
    active,
    store_id,
    COALESCE(SAFE_CAST(manager_id AS INT64), 0) AS manager_id
FROM {{ source('localbike', 'staffs') }}