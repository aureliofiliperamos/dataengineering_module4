{% docs mrt_logistique_performance %}

This model tracks **Operational Efficiency**. High delivery delays directly impact customer retention and future revenue.

### Metrics:
* **Days to Ship**: Calculated using BigQuery `DATE_DIFF` between shippment and order.
* **Is Late**: A boolean flag triggered when the `shipped_date` exceeds the `required_date`.

### Strategic Use:
Monitor which stores or staff members have the highest delay rates to optimize the fulfillment process.

{% enddocs %}