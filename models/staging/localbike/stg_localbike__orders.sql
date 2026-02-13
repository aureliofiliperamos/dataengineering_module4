SELECT order_id,
    customer_id,
    order_status,
    SAFE_CAST(order_date AS DATE) AS order_date,
    SAFE_CAST(required_date AS DATE) AS required_date,
    SAFE_CAST(shipped_date AS DATE) AS shipped_date,
    store_id,
    staff_id
FROM {{ source('localbike', 'orders') }}