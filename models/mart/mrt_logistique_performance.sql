{{ config(materialized='table') }}

SELECT 
    order_id,
    store_id,
    staff_id,
    order_date,
    shipped_date,
    required_date,
    DATE_DIFF(shipped_date, order_date, DAY) AS days_to_ship,
    CASE WHEN shipped_date > required_date THEN 1 ELSE 0 END AS is_late
FROM {{ ref('int_localbike__orders') }}
WHERE order_status = 4