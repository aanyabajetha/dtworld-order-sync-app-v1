%dw 2.0
output application/json
---
if(!isEmpty(payload))
payload.originalFields map ((item, index) -> {
    order_id: item.Order_ID__c,
    customer_id: item.Customer_ID__c,
    order_status: item.Order_Status__c,
    order_date: item.Order_Date__c,
    cancellation_date: item.Cancellation_Time__c,
    sf_sync_status: "Success"
})
else []