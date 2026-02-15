SELECT order_id,
    item_id,
    product_id,
    item_quantity,
    unit_price,
    discount,
    ROUND(unit_price * item_quantity, 2) AS gross_amount,
    ROUND((unit_price * item_quantity) * discount, 2) AS discount_amount,
    ROUND((unit_price * item_quantity) * (1 - discount), 2) AS net_amount
FROM {{ ref('stg_localbike__order_items') }}