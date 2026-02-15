{{ config(materialized='table') }}

SELECT 
    sp.product_id,
    sp.store_id,
    sp.product_name,
    sp.category_name,
    sp.brand_name,
    sp.stock_quantity,
    sp.inventory_status,
    sp.stock_value,
    COALESCE(SUM(oi.item_quantity), 0) AS total_units_sold,
    COALESCE(SUM(oi.net_amount), 0) AS total_net_revenue
FROM {{ ref('int_localbike__stock_performance') }} AS sp
LEFT JOIN {{ ref('int_localbike__order_items') }} AS oi 
    ON sp.product_id = oi.product_id
LEFT JOIN {{ ref('int_localbike__orders') }} AS o 
    ON oi.order_id = o.order_id 
    AND sp.store_id = o.store_id
GROUP BY sp.product_id,
    sp.store_id,
    sp.product_name,
    sp.category_name,
    sp.brand_name,
    sp.stock_quantity,
    sp.inventory_status,
    sp.stock_value