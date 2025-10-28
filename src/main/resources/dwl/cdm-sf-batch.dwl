%dw 2.0
output application/csv
---
{
  Order_ID__c: payload.order_id,
  Customer_ID__c: payload.customer_id,
  Customer_Name__c: payload.customer_name,
  Order_Date__c: payload.order_date,
  Order_Status__c: payload.order_status,
  Cancellation_Time__c: payload.cancellation_time,
  Created_At__c: payload.created_at,
  Updated_At__c: payload.updated_at
}