SELECT order_id,
    customer_id,
    store_id,
    staff_id,
    order_status,
    order_date,
    required_date,
    shipped_date,
    CASE WHEN order_status = 4 THEN 1 ELSE 0 END AS completed_order
FROM {{ ref('stg_localbike__orders') }}