%dw 2.0
output application/json
---
{
       transactionId: vars.messageContext.transactionId,
       applicationName: vars.messageContext.applicationName,
       flowName: vars.messageContext.flowName,
       messageType: vars.messageContext.messageType,
       businessId: vars.messageContext.businessId,
       businessText: vars.messageContext.businessText,
       logStatus: p('kdp.tracking.errorLogStatus'),
       exceptionText: error.description
}