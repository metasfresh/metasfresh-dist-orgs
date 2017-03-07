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
