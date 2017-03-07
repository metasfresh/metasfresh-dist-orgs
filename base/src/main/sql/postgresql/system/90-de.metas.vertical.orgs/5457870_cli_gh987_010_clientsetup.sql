-- 07.03.2017 15:31
-- URL zum Konzept
INSERT INTO C_Location (AD_Client_ID,Address1,AD_Org_ID,C_Country_ID,City,C_Location_ID,Created,CreatedBy,IsActive,IsPostalValidated,NonStdAddress,Postal,Updated,UpdatedBy) VALUES (1000000,'Am Nossbacher Weg 2',0,101,'Bonn',540005,TO_TIMESTAMP('2017-03-07 15:31:56','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','N','53179',TO_TIMESTAMP('2017-03-07 15:31:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 15:33
-- URL zum Konzept
UPDATE C_Location SET Address1='Burgerrietstrasse 13', Address2='', Address3='', Address4='', C_City_ID=1003843, C_Country_ID=107, City='Uznach', C_Region_ID=1000022, Postal='8730', Postal_Add='', RegionName='SG',Updated=TO_TIMESTAMP('2017-03-07 15:33:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_Location_ID=540005
;

-- 07.03.2017 15:33
-- URL zum Konzept
INSERT INTO AD_SysConfig (AD_Client_ID,AD_Org_ID,AD_SysConfig_ID,ConfigurationLevel,Created,CreatedBy,IsActive,Name,Updated,UpdatedBy,Value) VALUES (1000000,0,541081,'C',TO_TIMESTAMP('2017-03-07 15:33:51','YYYY-MM-DD HH24:MI:SS'),100,'Y','de.metas.payment.esr.Enabled',TO_TIMESTAMP('2017-03-07 15:33:51','YYYY-MM-DD HH24:MI:SS'),100,'N')
;

-- 07.03.2017 15:33
-- URL zum Konzept
UPDATE C_Location SET AD_Client_ID=1000000, Address1='Burgerrietstrasse 13', Address2='', Address3='', Address4='', AD_Org_ID=0, C_City_ID=1003843, C_Country_ID=107, City='Uznach', C_Region_ID=1000022, IsPostalValidated='N', NonStdAddress='N', Postal='8730', Postal_Add='', RegionName='SG',Updated=TO_TIMESTAMP('2017-03-07 15:33:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_Location_ID=2189861
;

-- 07.03.2017 15:33
-- URL zum Konzept
UPDATE AD_Client SET AD_Language='de_CH', Name='eoss AG', Value='eoss AG',Updated=TO_TIMESTAMP('2017-03-07 15:33:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Client_ID=1000000
;

-- 07.03.2017 15:33
-- URL zum Konzept
UPDATE AD_Org SET IsSummary='N', Name='eoss AG', Value='eoss AG',Updated=TO_TIMESTAMP('2017-03-07 15:33:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Org_ID=1000000
;

-- 07.03.2017 15:33
-- URL zum Konzept
UPDATE C_BPartner SET AD_Language='de_CH', CompanyName='eoss AG', IsCompany='Y', IsCustomer='N', IsEmployee='N', IsVendor='N', Name='eoss AG', Value='eoss AG',Updated=TO_TIMESTAMP('2017-03-07 15:33:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_BPartner_ID=2155894
;

-- 07.03.2017 15:33
-- URL zum Konzept
UPDATE C_BPartner_Location SET Address='Burgerrietstrasse 13
8730 Uznach
Schweiz', AD_Org_ID=1000000, GLN=NULL, Name='Uznach',Updated=TO_TIMESTAMP('2017-03-07 15:33:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_BPartner_Location_ID=2202690
;

-- 07.03.2017 15:33
-- URL zum Konzept
UPDATE AD_User SET Firstname='Automatik-Benutzer', IsPurchaseContact='Y', IsSalesContact='Y', Lastname='Admin',Updated=TO_TIMESTAMP('2017-03-07 15:33:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_User_ID=1000000
;

-- 07.03.2017 15:33
-- URL zum Konzept
UPDATE C_BP_BankAccount SET AccountNo='1234567', A_Name='-', BankAccountType='C', BPBankAcctUse='B', C_Bank_ID=9920562, C_Currency_ID=318, IsDefault='Y', RoutingNo=NULL,Updated=TO_TIMESTAMP('2017-03-07 15:33:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_BP_BankAccount_ID=2000257
;

-- 07.03.2017 15:33
-- URL zum Konzept
UPDATE C_AcctSchema SET C_Currency_ID=318, Name='UN / CHF',Updated=TO_TIMESTAMP('2017-03-07 15:33:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_AcctSchema_ID=1000000
;

-- 07.03.2017 15:33
-- URL zum Konzept
UPDATE M_PriceList SET C_Currency_ID=318,Updated=TO_TIMESTAMP('2017-03-07 15:33:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE M_PriceList_ID=100
;

-- give all partners same group
update c_bpartner
set c_bp_group_id = 1000000
where c_bp_group_id is not null;

-- deleting not needed groups
delete from c_bp_group where value not in ('Kunde','Standard');

-- 07.03.2017 16:42
-- URL zum Konzept
UPDATE C_BP_Group SET M_PricingSystem_ID=2000837, PO_PricingSystem_ID=2000835,Updated=TO_TIMESTAMP('2017-03-07 16:42:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_BP_Group_ID=2000228
;

-- 07.03.2017 16:42
-- URL zum Konzept
INSERT INTO C_BP_Group (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,C_BP_Group_ID,Created,CreatedBy,CreditWatchPercent,IsActive,IsConfidentialInfo,IsCustomer,IsDefault,IsPrintTax,IsPrintTaxSales,M_FreightCost_ID,M_PriceList_ID,M_PricingSystem_ID,Name,PO_PricingSystem_ID,PriceMatchTolerance,PriorityBase,Updated,UpdatedBy,Value) VALUES (1000000,1000000,100,540003,TO_TIMESTAMP('2017-03-07 16:42:28','YYYY-MM-DD HH24:MI:SS'),100,0,'Y','N','N','N','Y','Y',1000000,2001003,2000837,'Mitglied',2000837,0,'S',TO_TIMESTAMP('2017-03-07 16:42:28','YYYY-MM-DD HH24:MI:SS'),100,'1000001')
;

-- 07.03.2017 16:42
-- URL zum Konzept
INSERT INTO C_BP_Group_Acct (C_BP_Group_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,C_Prepayment_Acct,C_Receivable_Acct,C_Receivable_Services_Acct,NotInvoicedReceipts_Acct,NotInvoicedReceivables_Acct,NotInvoicedRevenue_Acct,PayDiscount_Exp_Acct,PayDiscount_Rev_Acct,UnEarnedRevenue_Acct,V_Liability_Acct,V_Liability_Services_Acct,V_Prepayment_Acct,WriteOff_Acct) SELECT 540003, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', now(),100,now(),100,p.C_Prepayment_Acct,p.C_Receivable_Acct,p.C_Receivable_Services_Acct,p.NotInvoicedReceipts_Acct,p.NotInvoicedReceivables_Acct,p.NotInvoicedRevenue_Acct,p.PayDiscount_Exp_Acct,p.PayDiscount_Rev_Acct,p.UnEarnedRevenue_Acct,p.V_Liability_Acct,p.V_Liability_Services_Acct,p.V_Prepayment_Acct,p.WriteOff_Acct FROM C_AcctSchema_Default p WHERE p.AD_Client_ID=1000000 AND NOT EXISTS (SELECT * FROM C_BP_Group_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.C_BP_Group_ID=540003)
;

-- 07.03.2017 16:42
-- URL zum Konzept
UPDATE C_BP_Group SET Value='Mitglied',Updated=TO_TIMESTAMP('2017-03-07 16:42:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_BP_Group_ID=540003
;

-- 07.03.2017 16:42
-- URL zum Konzept
INSERT INTO C_BP_Group (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,C_BP_Group_ID,Created,CreatedBy,CreditWatchPercent,IsActive,IsConfidentialInfo,IsCustomer,IsDefault,IsPrintTax,IsPrintTaxSales,M_FreightCost_ID,M_PriceList_ID,M_PricingSystem_ID,Name,PO_PricingSystem_ID,PriceMatchTolerance,PriorityBase,Updated,UpdatedBy,Value) VALUES (1000000,1000000,100,540004,TO_TIMESTAMP('2017-03-07 16:42:55','YYYY-MM-DD HH24:MI:SS'),100,0,'Y','N','N','N','Y','Y',1000000,2001003,2000837,'Sektion',2000835,0,'S',TO_TIMESTAMP('2017-03-07 16:42:55','YYYY-MM-DD HH24:MI:SS'),100,'Sektion')
;

-- 07.03.2017 16:42
-- URL zum Konzept
INSERT INTO C_BP_Group_Acct (C_BP_Group_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,C_Prepayment_Acct,C_Receivable_Acct,C_Receivable_Services_Acct,NotInvoicedReceipts_Acct,NotInvoicedReceivables_Acct,NotInvoicedRevenue_Acct,PayDiscount_Exp_Acct,PayDiscount_Rev_Acct,UnEarnedRevenue_Acct,V_Liability_Acct,V_Liability_Services_Acct,V_Prepayment_Acct,WriteOff_Acct) SELECT 540004, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', now(),100,now(),100,p.C_Prepayment_Acct,p.C_Receivable_Acct,p.C_Receivable_Services_Acct,p.NotInvoicedReceipts_Acct,p.NotInvoicedReceivables_Acct,p.NotInvoicedRevenue_Acct,p.PayDiscount_Exp_Acct,p.PayDiscount_Rev_Acct,p.UnEarnedRevenue_Acct,p.V_Liability_Acct,p.V_Liability_Services_Acct,p.V_Prepayment_Acct,p.WriteOff_Acct FROM C_AcctSchema_Default p WHERE p.AD_Client_ID=1000000 AND NOT EXISTS (SELECT * FROM C_BP_Group_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.C_BP_Group_ID=540004)
;

