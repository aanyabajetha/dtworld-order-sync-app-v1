%dw 2.0
output application/csv
---
flatten(payload pluck ((v, k) -> read(v, "application/json")))