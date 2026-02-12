SELECT order_id,
    customer_id,
    order_status,
    SAFE_CAST(order_date AS DATE) AS created_order_at,
    SAFE_CAST(required_date AS DATE) AS required_order_at,
    SAFE_CAST(shipped_date AS DATE) AS shipped_date_at,
    store_id,
    staff_id
FROM {{ source('localbike', 'orders') }}