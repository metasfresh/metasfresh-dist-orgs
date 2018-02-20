UPDATE AD_ColumnCallout 
SET IsActive='N', Updated=now(), UpdatedBy=99
WHERE ClassName = 'org.compiere.model.CalloutOrder.bPartner';