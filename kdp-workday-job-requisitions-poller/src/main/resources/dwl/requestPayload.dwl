%dw 2.0
output application/xml encoding="UTF-8"
ns bsvc urn:com.workday/bsvc
---

bsvc#Get_Job_Requisitions_Request: {
    bsvc#Request_Criteria: {
	bsvc#Field_And_Parameter_Criteria_Data: {
            bsvc#Provider_Reference: {
                bsvc#ID @("bsvc:type": "Integration_System_ID"): "INT200e-MuleSoftCCJobRequisition"
            }
        },
        bsvc#Transaction_Log_Criteria_Data: {
       	 bsvc#Transaction_Date_Range_Data:{
       	 		bsvc#Updated_From: vars.updatedFrom,
       	 		bsvc#Updated_Through: vars.updatedThrough
       	 		
        	}
        }
    },
    bsvc#Response_Filter: {
        bsvc#Page: vars.pageNumber,
        bsvc#Count: vars.pageSize
    },
    bsvc#Response_Group: {
        bsvc#Include_Requisition_Compensation: true,
        bsvc#Include_Reference: true,
        bsvc#Include_Job_Requisition_Definition_Data: true,
        bsvc#Include_Job_Requisition_Restrictions_Data: true,
        bsvc#Include_Qualifications: true,
        bsvc#Include_Job_Requisition_Attachments: false,
        bsvc#Include_Organizations: true,
        bsvc#Include_Roles: true
    }
}