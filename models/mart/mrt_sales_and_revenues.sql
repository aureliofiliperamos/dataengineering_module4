{{ config(materialized='table') }}

SELECT 
    oi.order_id,
    oi.product_id,
    o.store_id,
    o.customer_id,
    o.order_date,
    oi.item_quantity,
    oi.gross_amount,
    oi.discount_amount,
    oi.net_amount,
    o.completed_order
FROM {{ ref('int_localbike__order_items') }} AS oi
INNER JOIN {{ ref('int_localbike__orders') }} AS o 
    ON oi.order_id = o.order_id