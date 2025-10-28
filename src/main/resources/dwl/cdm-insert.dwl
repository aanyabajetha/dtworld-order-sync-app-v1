%dw 2.0
output application/json
---
payload
 map ((item) -> {
  order_id: item.order_id,
  customer_id: item.customer_id,
  customer_name: item.customer_name,
  order_date: if(!isEmpty(item.order_date)) item.order_date as LocalDateTime {format: "dd-MM-yyyy'T'HH:mm:ss"} as DateTime {format: "yyyy-MM-dd'T'HH:mm:ss"}
  else null,
  order_status: item.order_status,
  cancellation_time: if(!isEmpty(item.cancellation_time)) item.cancellation_time as LocalDateTime {format: "dd-MM-yyyy'T'HH:mm:ss"} as DateTime {format: "yyyy-MM-dd'T'HH:mm:ss"} else null
})