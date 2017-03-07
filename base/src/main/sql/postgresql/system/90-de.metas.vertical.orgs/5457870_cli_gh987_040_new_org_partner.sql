-- 07.03.2017 17:50
-- URL zum Konzept
INSERT INTO C_BPartner (AcqusitionCost,AD_Client_ID,AD_Language,AD_Org_ID,AllowConsolidateInOut,C_BPartner_ID,C_BP_Group_ID,C_PaymentTerm_ID,Created,CreatedBy,CreateSO,CreditorId,DebtorId,DeliveryRule,DeliveryViaRule,DocumentCopies,EdiDESADVDefaultItemCapacity,FlatDiscount,Fresh_AllowLineDiscount,Fresh_IsPrintESR,Fresh_Produzentenabrechnung,Fresh_Urproduzent,InvoiceRule,IsActive,IsADRCustomer,IsADRVendor,IsCompany,IsCreateDefaultPOReference,IsCustomer,IsDisableOrderCheckup,IsDiscountPrinted,IsEdiRecipient,IsEmployee,IsHidePackingMaterialInShipmentPrint,IsOneTime,IsParentSponsorReadWrite,IsPlanning,IsPOTaxExempt,IsProducerAllotment,IsProspect,IsReplicationLookupDefault,IsSalesRep,IsShippingNotificationEmail,IsSubscriptionConfirmRequired,IsSummary,IsTaxExempt,IsVendor,M_FreightCost_ID,M_PriceList_ID,M_PricingSystem_ID,M_Warehouse_ID,Name,NumberEmployees,PaymentRule,PaymentRulePO,PostageFree,PostageFreeAmt,PotentialLifeTimeValue,SalesVolume,SendEMail,ShareOfCustomer,ShelfLifeMinPct,SO_CreditLimit,Updated,UpdatedBy,Value) VALUES (0,1000000,'de_CH',540002,'Y',540006,1000000,1000002,TO_TIMESTAMP('2017-03-07 17:50:23','YYYY-MM-DD HH24:MI:SS'),100,'N',0,0,'F','P',0,1,0,'N','N','N','N','D','Y','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','N','N','N','N','N',1000000,2001003,2000837,540008,'sektion 1',0,'P','P','Su',0,0,0,'N',0,0,0,TO_TIMESTAMP('2017-03-07 17:50:23','YYYY-MM-DD HH24:MI:SS'),100,'1000003')
;

-- 07.03.2017 17:50
-- URL zum Konzept
INSERT INTO C_BP_Customer_Acct (C_BPartner_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,C_Prepayment_Acct,C_Receivable_Acct,C_Receivable_Services_Acct) SELECT 540006, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', now(),100,now(),100,p.C_Prepayment_Acct,p.C_Receivable_Acct,p.C_Receivable_Services_Acct FROM C_BP_Group_Acct p WHERE p.AD_Client_ID=1000000 AND p.C_BP_Group_ID=1000000 AND NOT EXISTS (SELECT * FROM C_BP_Customer_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.C_BPartner_ID=540006)
;

-- 07.03.2017 17:50
-- URL zum Konzept
INSERT INTO C_BP_Vendor_Acct (C_BPartner_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,V_Liability_Acct,V_Liability_Services_Acct,V_Prepayment_Acct) SELECT 540006, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', now(),100,now(),100,p.V_Liability_Acct,p.V_Liability_Services_Acct,p.V_Prepayment_Acct FROM C_BP_Group_Acct p WHERE p.AD_Client_ID=1000000 AND p.C_BP_Group_ID=1000000 AND NOT EXISTS (SELECT * FROM C_BP_Vendor_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.C_BPartner_ID=540006)
;

-- 07.03.2017 17:50
-- URL zum Konzept
INSERT INTO C_BP_Employee_Acct (C_BPartner_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,E_Expense_Acct,E_Prepayment_Acct) SELECT 540006, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', now(),100,now(),100,p.E_Expense_Acct,p.E_Prepayment_Acct FROM C_AcctSchema_Default p WHERE p.AD_Client_ID=1000000 AND NOT EXISTS (SELECT * FROM C_BP_Employee_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.C_BPartner_ID=540006)
;

-- 07.03.2017 17:50
-- URL zum Konzept
INSERT  INTO AD_TreeNodeBP (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID,0, 'Y', now(), 100, now(), 100,t.AD_Tree_ID, 540006, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=1000000 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.AD_Table_ID=291 AND NOT EXISTS (SELECT * FROM AD_TreeNodeBP e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=540006)
;

-- 07.03.2017 17:50
-- URL zum Konzept
INSERT INTO C_Location (AD_Client_ID,Address1,Address2,Address3,Address4,AD_Org_ID,C_Country_ID,City,C_Location_ID,Created,CreatedBy,IsActive,Postal,Postal_Add,Updated,UpdatedBy) VALUES (1000000,'','','','',0,107,'',540006,TO_TIMESTAMP('2017-03-07 17:50:25','YYYY-MM-DD HH24:MI:SS'),100,'Y','','',TO_TIMESTAMP('2017-03-07 17:50:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:50
-- URL zum Konzept
INSERT INTO C_BPartner_Location (AD_Client_ID,Address,AD_Org_ID,C_BPartner_ID,C_BPartner_Location_ID,C_Location_ID,Created,CreatedBy,IsActive,IsBillTo,IsBillToDefault,IsCommissionTo,IsCommissionToDefault,IsHandOverLocation,IsPayFrom,IsRemitTo,IsReplicationLookupDefault,IsShipTo,IsShipToDefault,IsSubscriptionTo,IsSubscriptionToDefault,Migration_Key,Name,Updated,UpdatedBy) VALUES (1000000,'',540002,540006,540004,540006,TO_TIMESTAMP('2017-03-07 17:50:28','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','Y','N','N','Y','Y','N','N','Y','N','N','N',0,' #540006',TO_TIMESTAMP('2017-03-07 17:50:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:50
-- URL zum Konzept
INSERT INTO M_Warehouse (AD_Client_ID,AD_Org_ID,C_BPartner_Location_ID,C_Location_ID,Created,CreatedBy,IsActive,M_Warehouse_ID,Name,Separator,Updated,UpdatedBy,Value) VALUES (1000000,540002,540004,540006,TO_TIMESTAMP('2017-03-07 17:50:39','YYYY-MM-DD HH24:MI:SS'),100,'Y',540010,'Sektion 1','*',TO_TIMESTAMP('2017-03-07 17:50:39','YYYY-MM-DD HH24:MI:SS'),100,'001')
;

-- 07.03.2017 17:50
-- URL zum Konzept
INSERT INTO M_Warehouse_Acct (M_Warehouse_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,W_Differences_Acct,W_InvActualAdjust_Acct,W_Inventory_Acct,W_Revaluation_Acct) SELECT 540010, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', now(),100,now(),100,p.W_Differences_Acct,p.W_InvActualAdjust_Acct,p.W_Inventory_Acct,p.W_Revaluation_Acct FROM C_AcctSchema_Default p WHERE p.AD_Client_ID=1000000 AND NOT EXISTS (SELECT * FROM M_Warehouse_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Warehouse_ID=540010)
;

-- 07.03.2017 17:50
-- URL zum Konzept
INSERT INTO M_Locator (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsDefault,M_Locator_ID,M_Warehouse_ID,PriorityNo,Updated,UpdatedBy,Value,X,Y,Z) VALUES (1000000,540002,TO_TIMESTAMP('2017-03-07 17:50:40','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',540011,540010,50,TO_TIMESTAMP('2017-03-07 17:50:40','YYYY-MM-DD HH24:MI:SS'),100,'Standard','0','0','0')
;

-- 07.03.2017 17:50
-- URL zum Konzept
UPDATE AD_OrgInfo SET AD_OrgType_ID=NULL, M_Warehouse_ID=540010,Updated=TO_TIMESTAMP('2017-03-07 17:50:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Org_ID=540002
;

-- 07.03.2017 17:50
-- URL zum Konzept
UPDATE C_BPartner SET AD_OrgBP_ID=540002, AD_Org_ID=0,Updated=TO_TIMESTAMP('2017-03-07 17:50:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_BPartner_ID=540006
;

-- 07.03.2017 17:50
-- URL zum Konzept
UPDATE AD_Sequence SET CurrentNext = CurrentNext + ? WHERE AD_Sequence_ID = ? RETURNING CurrentNext - ?
;

-- 07.03.2017 17:50
-- URL zum Konzept
INSERT INTO C_BPartner (AcqusitionCost,AD_Client_ID,AD_Language,AD_Org_ID,AllowConsolidateInOut,C_BPartner_ID,C_BP_Group_ID,C_PaymentTerm_ID,Created,CreatedBy,CreateSO,CreditorId,DebtorId,DeliveryRule,DeliveryViaRule,DocumentCopies,EdiDESADVDefaultItemCapacity,FlatDiscount,Fresh_AllowLineDiscount,Fresh_IsPrintESR,Fresh_Produzentenabrechnung,Fresh_Urproduzent,InvoiceRule,IsActive,IsADRCustomer,IsADRVendor,IsCompany,IsCreateDefaultPOReference,IsCustomer,IsDisableOrderCheckup,IsDiscountPrinted,IsEdiRecipient,IsEmployee,IsHidePackingMaterialInShipmentPrint,IsOneTime,IsParentSponsorReadWrite,IsPlanning,IsPOTaxExempt,IsProducerAllotment,IsProspect,IsReplicationLookupDefault,IsSalesRep,IsShippingNotificationEmail,IsSubscriptionConfirmRequired,IsSummary,IsTaxExempt,IsVendor,M_FreightCost_ID,M_PriceList_ID,M_PricingSystem_ID,M_Warehouse_ID,Name,NumberEmployees,PaymentRule,PaymentRulePO,PostageFree,PostageFreeAmt,PotentialLifeTimeValue,SalesVolume,SendEMail,ShareOfCustomer,ShelfLifeMinPct,SO_CreditLimit,Updated,UpdatedBy,Value) VALUES (0,1000000,'de_CH',540003,'Y',540007,1000000,1000002,TO_TIMESTAMP('2017-03-07 17:50:48','YYYY-MM-DD HH24:MI:SS'),100,'N',0,0,'F','P',0,1,0,'N','N','N','N','D','Y','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','N','N','N','N','N',1000000,2001003,2000837,540008,'sektion 2',0,'P','P','Su',0,0,0,'N',0,0,0,TO_TIMESTAMP('2017-03-07 17:50:48','YYYY-MM-DD HH24:MI:SS'),100,'1000004')
;

-- 07.03.2017 17:50
-- URL zum Konzept
INSERT INTO C_BP_Customer_Acct (C_BPartner_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,C_Prepayment_Acct,C_Receivable_Acct,C_Receivable_Services_Acct) SELECT 540007, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', now(),100,now(),100,p.C_Prepayment_Acct,p.C_Receivable_Acct,p.C_Receivable_Services_Acct FROM C_BP_Group_Acct p WHERE p.AD_Client_ID=1000000 AND p.C_BP_Group_ID=1000000 AND NOT EXISTS (SELECT * FROM C_BP_Customer_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.C_BPartner_ID=540007)
;

-- 07.03.2017 17:50
-- URL zum Konzept
INSERT INTO C_BP_Vendor_Acct (C_BPartner_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,V_Liability_Acct,V_Liability_Services_Acct,V_Prepayment_Acct) SELECT 540007, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', now(),100,now(),100,p.V_Liability_Acct,p.V_Liability_Services_Acct,p.V_Prepayment_Acct FROM C_BP_Group_Acct p WHERE p.AD_Client_ID=1000000 AND p.C_BP_Group_ID=1000000 AND NOT EXISTS (SELECT * FROM C_BP_Vendor_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.C_BPartner_ID=540007)
;

-- 07.03.2017 17:50
-- URL zum Konzept
INSERT INTO C_BP_Employee_Acct (C_BPartner_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,E_Expense_Acct,E_Prepayment_Acct) SELECT 540007, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', now(),100,now(),100,p.E_Expense_Acct,p.E_Prepayment_Acct FROM C_AcctSchema_Default p WHERE p.AD_Client_ID=1000000 AND NOT EXISTS (SELECT * FROM C_BP_Employee_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.C_BPartner_ID=540007)
;

-- 07.03.2017 17:50
-- URL zum Konzept
INSERT  INTO AD_TreeNodeBP (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID,0, 'Y', now(), 100, now(), 100,t.AD_Tree_ID, 540007, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=1000000 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.AD_Table_ID=291 AND NOT EXISTS (SELECT * FROM AD_TreeNodeBP e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=540007)
;

-- 07.03.2017 17:50
-- URL zum Konzept
INSERT INTO C_Location (AD_Client_ID,Address1,Address2,Address3,Address4,AD_Org_ID,C_Country_ID,City,C_Location_ID,Created,CreatedBy,IsActive,Postal,Postal_Add,Updated,UpdatedBy) VALUES (1000000,'','','','',0,107,'',540007,TO_TIMESTAMP('2017-03-07 17:50:52','YYYY-MM-DD HH24:MI:SS'),100,'Y','','',TO_TIMESTAMP('2017-03-07 17:50:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:50
-- URL zum Konzept
INSERT INTO C_BPartner_Location (AD_Client_ID,Address,AD_Org_ID,C_BPartner_ID,C_BPartner_Location_ID,C_Location_ID,Created,CreatedBy,IsActive,IsBillTo,IsBillToDefault,IsCommissionTo,IsCommissionToDefault,IsHandOverLocation,IsPayFrom,IsRemitTo,IsReplicationLookupDefault,IsShipTo,IsShipToDefault,IsSubscriptionTo,IsSubscriptionToDefault,Migration_Key,Name,Updated,UpdatedBy) VALUES (1000000,'',540003,540007,540005,540007,TO_TIMESTAMP('2017-03-07 17:50:54','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','Y','N','N','Y','Y','N','N','Y','N','N','N',0,' #540007',TO_TIMESTAMP('2017-03-07 17:50:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:51
-- URL zum Konzept
INSERT INTO M_Warehouse (AD_Client_ID,AD_Org_ID,C_BPartner_Location_ID,C_Location_ID,Created,CreatedBy,IsActive,M_Warehouse_ID,Name,Separator,Updated,UpdatedBy,Value) VALUES (1000000,540003,540005,540007,TO_TIMESTAMP('2017-03-07 17:51:04','YYYY-MM-DD HH24:MI:SS'),100,'Y',540011,'Sektion 2','*',TO_TIMESTAMP('2017-03-07 17:51:04','YYYY-MM-DD HH24:MI:SS'),100,'002')
;

-- 07.03.2017 17:51
-- URL zum Konzept
INSERT INTO M_Warehouse_Acct (M_Warehouse_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,W_Differences_Acct,W_InvActualAdjust_Acct,W_Inventory_Acct,W_Revaluation_Acct) SELECT 540011, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', now(),100,now(),100,p.W_Differences_Acct,p.W_InvActualAdjust_Acct,p.W_Inventory_Acct,p.W_Revaluation_Acct FROM C_AcctSchema_Default p WHERE p.AD_Client_ID=1000000 AND NOT EXISTS (SELECT * FROM M_Warehouse_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Warehouse_ID=540011)
;

-- 07.03.2017 17:51
-- URL zum Konzept
INSERT INTO M_Locator (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsDefault,M_Locator_ID,M_Warehouse_ID,PriorityNo,Updated,UpdatedBy,Value,X,Y,Z) VALUES (1000000,540003,TO_TIMESTAMP('2017-03-07 17:51:04','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',540012,540011,50,TO_TIMESTAMP('2017-03-07 17:51:04','YYYY-MM-DD HH24:MI:SS'),100,'Standard','0','0','0')
;

-- 07.03.2017 17:51
-- URL zum Konzept
UPDATE AD_OrgInfo SET AD_OrgType_ID=NULL, M_Warehouse_ID=540011,Updated=TO_TIMESTAMP('2017-03-07 17:51:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Org_ID=540003
;

-- 07.03.2017 17:51
-- URL zum Konzept
UPDATE C_BPartner SET AD_OrgBP_ID=540003, AD_Org_ID=0,Updated=TO_TIMESTAMP('2017-03-07 17:51:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_BPartner_ID=540007
;
