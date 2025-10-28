%dw 2.0
output application/json
---
flatten(
  payload 
    groupBy ((item) -> item.order_id)
    pluck ((orders, key) -> 
        // just keep one record per status type, removes exact duplicates
        orders distinctBy ((o) -> o.order_status)
    )
)
