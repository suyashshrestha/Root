%dw 2.0
output application/json
---
{
       transactionId: correlationId,
       applicationName: app.name,
       flowName: "kdp-workday-job-requisitions-poller-main",
       messageType: "workers",
       businessId: "job-requisitions-poller",
       businessText: app.name,
       logStatus: p('kdp.tracking.enterLogStatus')
}