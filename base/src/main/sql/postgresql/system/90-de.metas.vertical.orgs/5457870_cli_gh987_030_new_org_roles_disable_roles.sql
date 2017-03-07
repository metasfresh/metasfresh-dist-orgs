
-- 07.03.2017 17:05
-- URL zum Konzept
INSERT INTO AD_Role (AD_Client_ID,AD_Org_ID,AD_Role_ID,AD_Tree_Menu_ID,Allow_Info_Account,Allow_Info_Asset,Allow_Info_BPartner,Allow_Info_CashJournal,Allow_Info_CRP,Allow_Info_InOut,Allow_Info_Invoice,Allow_Info_MRP,Allow_Info_Order,Allow_Info_Payment,Allow_Info_Product,Allow_Info_Resource,Allow_Info_Schedule,AmtApproval,C_Currency_ID,ConfirmQueryRecords,Created,CreatedBy,IsAccessAllOrgs,IsActive,IsAllowLoginDateOverride,IsAutoRoleLogin,IsCanApproveOwnDoc,IsCanExport,IsCanReport,IsChangeLog,IsDiscountAllowedOnTotal,IsDiscountUptoLimitPrice,IsManual,IsMenuAvailable,IsOrgLoginMandatory,IsPersonalAccess,IsPersonalLock,IsRoleAlwaysUseBetaFunctions,IsShowAcct,IsShowAllEntityTypes,IsUseUserOrgAccess,MaxQueryRecords,Name,OverwritePriceLimit,PreferenceType,SeqNo,Updated,UpdatedBy,UserDiscount,UserLevel) VALUES (1000000,0,540027,540005,'N','N','N','N','Y','N','N','Y','N','N','Y','N','N',0,318,0,TO_TIMESTAMP('2017-03-07 17:05:13','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','N','Y','Y','N','N','N','N','Y','N','N','N','N','N','N','N',0,'Sektion 1','N','O',20,TO_TIMESTAMP('2017-03-07 17:05:13','YYYY-MM-DD HH24:MI:SS'),100,0,'__O')
;

-- 07.03.2017 17:05
-- URL zum Konzept
INSERT INTO AD_User_Roles (AD_Client_ID,AD_Org_ID,AD_Role_ID,AD_User_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (1000000,1000000,540027,100,TO_TIMESTAMP('2017-03-07 17:05:13','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2017-03-07 17:05:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:05
-- URL zum Konzept
DELETE FROM AD_Window_Access WHERE AD_Role_ID=540027
;

-- 07.03.2017 17:05
-- URL zum Konzept
INSERT INTO AD_Window_Access (AD_Window_ID, AD_Role_ID, AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadWrite) SELECT DISTINCT w.AD_Window_ID, 540027,1000000,0,'Y', now(),100, now(),100,'Y' FROM AD_Window w INNER JOIN AD_Tab t ON (w.AD_Window_ID=t.AD_Window_ID) INNER JOIN AD_Table tt ON (t.AD_Table_ID=tt.AD_Table_ID) WHERE t.SeqNo=(SELECT MIN(SeqNo) FROM AD_Tab xt WHERE xt.AD_Window_ID=w.AD_Window_ID)AND tt.AccessLevel IN ('3','1','7') AND w.Name NOT LIKE '%(all)%'
;

-- 07.03.2017 17:05
-- URL zum Konzept
DELETE FROM AD_Process_Access WHERE AD_Role_ID=540027
;

-- 07.03.2017 17:05
-- URL zum Konzept
INSERT INTO AD_Process_Access (AD_Process_ID, AD_Role_ID, AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadWrite) SELECT DISTINCT p.AD_Process_ID, 540027,1000000,0,'Y', now(),100, now(),100,'Y' FROM AD_Process p WHERE AccessLevel IN ('3','1','7')
;

-- 07.03.2017 17:05
-- URL zum Konzept
DELETE FROM AD_Form_Access WHERE AD_Role_ID=540027
;

-- 07.03.2017 17:05
-- URL zum Konzept
INSERT INTO AD_Form_Access (AD_Form_ID, AD_Role_ID, AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadWrite) SELECT f.AD_Form_ID, 540027,1000000,0,'Y', now(),100, now(),100,'Y' FROM AD_Form f WHERE AccessLevel IN ('3','1','7')
;

-- 07.03.2017 17:05
-- URL zum Konzept
DELETE FROM AD_WorkFlow_Access WHERE AD_Role_ID=540027
;

-- 07.03.2017 17:05
-- URL zum Konzept
INSERT INTO AD_WorkFlow_Access (AD_WorkFlow_ID, AD_Role_ID, AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadWrite) SELECT w.AD_WorkFlow_ID, 540027,1000000,0,'Y', now(),100, now(),100,'Y' FROM AD_WorkFlow w WHERE AccessLevel IN ('3','1','7')
;

-- 07.03.2017 17:05
-- URL zum Konzept
DELETE FROM AD_Document_Action_Access WHERE AD_Role_ID=540027
;

-- 07.03.2017 17:05
-- URL zum Konzept
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 1000000,0,'Y', now(),100, now(),100, doctype.C_DocType_ID, action.AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List action ON (action.AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID AND rol.AD_Role_ID=540027) )
;

-- 07.03.2017 17:05
-- URL zum Konzept
INSERT INTO AD_Role_OrgAccess (AD_Client_ID,AD_Org_ID,AD_Role_ID,Created,CreatedBy,IsActive,IsReadOnly,Updated,UpdatedBy) VALUES (1000000,540002,540027,TO_TIMESTAMP('2017-03-07 17:05:24','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',TO_TIMESTAMP('2017-03-07 17:05:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:05
-- URL zum Konzept
INSERT INTO AD_Role (AD_Client_ID,AD_Org_ID,AD_Role_ID,AD_Tree_Menu_ID,Allow_Info_Account,Allow_Info_Asset,Allow_Info_BPartner,Allow_Info_CashJournal,Allow_Info_CRP,Allow_Info_InOut,Allow_Info_Invoice,Allow_Info_MRP,Allow_Info_Order,Allow_Info_Payment,Allow_Info_Product,Allow_Info_Resource,Allow_Info_Schedule,AmtApproval,C_Currency_ID,ConfirmQueryRecords,Created,CreatedBy,IsAccessAllOrgs,IsActive,IsAllowLoginDateOverride,IsAutoRoleLogin,IsCanApproveOwnDoc,IsCanExport,IsCanReport,IsChangeLog,IsDiscountAllowedOnTotal,IsDiscountUptoLimitPrice,IsManual,IsMenuAvailable,IsOrgLoginMandatory,IsPersonalAccess,IsPersonalLock,IsRoleAlwaysUseBetaFunctions,IsShowAcct,IsShowAllEntityTypes,IsUseUserOrgAccess,MaxQueryRecords,Name,OverwritePriceLimit,PreferenceType,SeqNo,Updated,UpdatedBy,UserDiscount,UserLevel) VALUES (1000000,0,540028,540005,'N','N','N','N','Y','N','N','Y','N','N','Y','N','N',0,318,0,TO_TIMESTAMP('2017-03-07 17:05:31','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','N','Y','Y','N','N','N','N','Y','N','N','N','N','N','N','N',0,'Sektion 2','N','O',20,TO_TIMESTAMP('2017-03-07 17:05:31','YYYY-MM-DD HH24:MI:SS'),100,0.00,'__O')
;

-- 07.03.2017 17:05
-- URL zum Konzept
INSERT INTO AD_User_Roles (AD_Client_ID,AD_Org_ID,AD_Role_ID,AD_User_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (1000000,1000000,540028,100,TO_TIMESTAMP('2017-03-07 17:05:31','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2017-03-07 17:05:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:05
-- URL zum Konzept
DELETE FROM AD_Window_Access WHERE AD_Role_ID=540028
;

-- 07.03.2017 17:05
-- URL zum Konzept
INSERT INTO AD_Window_Access (AD_Window_ID, AD_Role_ID, AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadWrite) SELECT DISTINCT w.AD_Window_ID, 540028,1000000,0,'Y', now(),100, now(),100,'Y' FROM AD_Window w INNER JOIN AD_Tab t ON (w.AD_Window_ID=t.AD_Window_ID) INNER JOIN AD_Table tt ON (t.AD_Table_ID=tt.AD_Table_ID) WHERE t.SeqNo=(SELECT MIN(SeqNo) FROM AD_Tab xt WHERE xt.AD_Window_ID=w.AD_Window_ID)AND tt.AccessLevel IN ('3','1','7') AND w.Name NOT LIKE '%(all)%'
;

-- 07.03.2017 17:05
-- URL zum Konzept
DELETE FROM AD_Process_Access WHERE AD_Role_ID=540028
;

-- 07.03.2017 17:05
-- URL zum Konzept
INSERT INTO AD_Process_Access (AD_Process_ID, AD_Role_ID, AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadWrite) SELECT DISTINCT p.AD_Process_ID, 540028,1000000,0,'Y', now(),100, now(),100,'Y' FROM AD_Process p WHERE AccessLevel IN ('3','1','7')
;

-- 07.03.2017 17:05
-- URL zum Konzept
DELETE FROM AD_Form_Access WHERE AD_Role_ID=540028
;

-- 07.03.2017 17:05
-- URL zum Konzept
INSERT INTO AD_Form_Access (AD_Form_ID, AD_Role_ID, AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadWrite) SELECT f.AD_Form_ID, 540028,1000000,0,'Y', now(),100, now(),100,'Y' FROM AD_Form f WHERE AccessLevel IN ('3','1','7')
;

-- 07.03.2017 17:05
-- URL zum Konzept
DELETE FROM AD_WorkFlow_Access WHERE AD_Role_ID=540028
;

-- 07.03.2017 17:05
-- URL zum Konzept
INSERT INTO AD_WorkFlow_Access (AD_WorkFlow_ID, AD_Role_ID, AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadWrite) SELECT w.AD_WorkFlow_ID, 540028,1000000,0,'Y', now(),100, now(),100,'Y' FROM AD_WorkFlow w WHERE AccessLevel IN ('3','1','7')
;

-- 07.03.2017 17:05
-- URL zum Konzept
DELETE FROM AD_Document_Action_Access WHERE AD_Role_ID=540028
;

-- 07.03.2017 17:05
-- URL zum Konzept
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 1000000,0,'Y', now(),100, now(),100, doctype.C_DocType_ID, action.AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List action ON (action.AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID AND rol.AD_Role_ID=540028) )
;

-- 07.03.2017 17:05
-- URL zum Konzept
INSERT INTO AD_Role_OrgAccess (AD_Client_ID,AD_Org_ID,AD_Role_ID,Created,CreatedBy,IsActive,IsReadOnly,Updated,UpdatedBy) VALUES (1000000,540003,540028,TO_TIMESTAMP('2017-03-07 17:05:37','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',TO_TIMESTAMP('2017-03-07 17:05:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:08
-- URL zum Konzept
INSERT INTO AD_User (AD_Client_ID,AD_Org_ID,AD_User_ID,Created,CreatedBy,Firstname,Fresh_Gift,IsAccountLocked,IsActive,IsDefaultContact,IsFullBPAccess,IsInPayroll,IsMFProcurementUser,IsPurchaseContact,IsPurchaseContact_Default,IsSalesContact,IsSalesContact_Default,IsSubjectMatterContact,IsSystemUser,Lastname,Login,LoginFailureCount,Name,NotificationType,Password,Processing,UnlockAccount,Updated,UpdatedBy,Value) VALUES (1000000,1000000,540031,TO_TIMESTAMP('2017-03-07 17:08:23','YYYY-MM-DD HH24:MI:SS'),100,'demo','N','N','Y','N','Y','N','N','N','N','N','N','N','Y','demo','demo_user',0,'demo, demo','N','demodemo','N','N',TO_TIMESTAMP('2017-03-07 17:08:23','YYYY-MM-DD HH24:MI:SS'),100,'demouser')
;

-- 07.03.2017 17:08
-- URL zum Konzept
INSERT INTO AD_User_Roles (AD_Client_ID,AD_Org_ID,AD_Role_ID,AD_User_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (1000000,0,540027,540031,TO_TIMESTAMP('2017-03-07 17:08:37','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2017-03-07 17:08:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:08
-- URL zum Konzept
INSERT INTO AD_User_Roles (AD_Client_ID,AD_Org_ID,AD_Role_ID,AD_User_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (1000000,0,540028,540031,TO_TIMESTAMP('2017-03-07 17:08:42','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2017-03-07 17:08:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:09
-- URL zum Konzept
UPDATE AD_Role SET IsActive='N',Updated=TO_TIMESTAMP('2017-03-07 17:09:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Role_ID=540024
;

-- 07.03.2017 17:09
-- URL zum Konzept
UPDATE AD_Role SET IsActive='N',Updated=TO_TIMESTAMP('2017-03-07 17:09:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Role_ID=540017
;
-- 07.03.2017 17:17
-- URL zum Konzept
INSERT INTO AD_Role_OrgAccess (AD_Client_ID,AD_Org_ID,AD_Role_ID,Created,CreatedBy,IsActive,IsReadOnly,Updated,UpdatedBy) VALUES (1000000,540002,540026,TO_TIMESTAMP('2017-03-07 17:17:23','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',TO_TIMESTAMP('2017-03-07 17:17:23','YYYY-MM-DD HH24:MI:SS'),100)
;

