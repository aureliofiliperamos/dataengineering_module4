{% docs mart_stock_and_sales %}

This model focuses on **Inventory Optimization** to prevent revenue loss due to stockouts.
It combines real-time stock levels from `int_localbike__stock_and_sales` with historical sales volume.

### Inventory Status Logic:
**OUT OF STOCK** If quantity = 0. Sales are impossible.
**CRITICAL STOCK** If quantity = 5. Immediate reorder required.
**LOW STOCK** If quantity is between 6 and 15 units.
**ENOUGH STOCK** If quantity is more than 15 units.

### Strategic Use:
Identify "Best Sellers" that are currently in `LOW STOCK` to prioritize replenishment.

{% enddocs %}