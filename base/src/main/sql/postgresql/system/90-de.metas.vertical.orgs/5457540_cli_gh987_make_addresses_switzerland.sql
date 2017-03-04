-- 04.03.2017 11:32
-- URL zum Konzept
UPDATE C_Location SET Address1='Am Nossbacher Weg 2', Address2='', Address3='', Address4='', C_City_ID=NULL, C_Country_ID=107, City='Bonn', C_Region_ID=NULL, Postal='53179', Postal_Add='', RegionName=NULL,Updated=TO_TIMESTAMP('2017-03-04 11:32:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_Location_ID=2192332
;

-- 04.03.2017 11:32
-- URL zum Konzept
UPDATE C_BPartner_Location SET Address='Am Nossbacher Weg 2
53179 Bonn
Schweiz',Updated=TO_TIMESTAMP('2017-03-04 11:32:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_BPartner_Location_ID=2202690
;

-- 04.03.2017 11:33
-- URL zum Konzept
INSERT INTO M_ProductPrice (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_TaxCategory_ID,C_UOM_ID,IsActive,IsAttributeDependant,IsDefault,IsHUPrice,IsSeasonFixedPrice,MatchSeqNo,M_PriceList_Version_ID,M_Product_ID,M_ProductPrice_ID,PriceLimit,PriceList,PriceStd,SeqNo,Updated,UpdatedBy,UseScalePrice) VALUES (1000000,1000000,TO_TIMESTAMP('2017-03-04 11:33:17','YYYY-MM-DD HH24:MI:SS'),100,1000002,100,'Y','N','N','N','N',0,2002139,540022,540028,0,0,0,60,TO_TIMESTAMP('2017-03-04 11:33:17','YYYY-MM-DD HH24:MI:SS'),100,'N')
;

-- 04.03.2017 11:33
-- URL zum Konzept
UPDATE M_ProductPrice SET PriceStd=50.000000000000,Updated=TO_TIMESTAMP('2017-03-04 11:33:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE M_ProductPrice_ID=540028
;