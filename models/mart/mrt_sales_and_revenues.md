{% docs mrt_sales_and_revenues %}

This model is the source for revenue optimization.
It joins order items table with order table to provide a granular view of every transaction.

### Key Business Logic:
* **Gross Amount**: Total value before any discounts.
* **Net Amount**: The actual revenue collected after applying the `discount` percentage.
* **Completed Order**: Only orders with status '4' are flagged as confirmed revenue.

### Strategic Use:
This table is used to calculate **Average Order Value (AOV)** and **Discount Impact** on margins.

{% enddocs %}