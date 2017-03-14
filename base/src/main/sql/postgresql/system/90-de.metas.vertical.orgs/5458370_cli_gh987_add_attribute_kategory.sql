-- 14.03.2017 15:53
-- URL zum Konzept
INSERT INTO M_Attribute (AD_Client_ID,AD_Org_ID,AttributeValueType,Created,CreatedBy,C_UOM_ID,IsActive,IsAttrDocumentRelevant,IsInstanceAttribute,IsMandatory,IsMatchHUStorage,IsPricingRelevant,IsReadOnlyValues,IsTransferWhenNull,M_Attribute_ID,Name,Updated,UpdatedBy,Value,ValueMax,ValueMin) VALUES (1000000,0,'L',TO_TIMESTAMP('2017-03-14 15:53:22','YYYY-MM-DD HH24:MI:SS'),100,100,'Y','Y','N','Y','N','Y','N','N',540030,'Kategorie',TO_TIMESTAMP('2017-03-14 15:53:22','YYYY-MM-DD HH24:MI:SS'),100,'Kategorie',0,0)
;

-- 14.03.2017 15:54
-- URL zum Konzept
INSERT INTO M_AttributeValue (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsNullFieldValue,M_Attribute_ID,M_AttributeValue_ID,Name,Updated,UpdatedBy,Value) VALUES (1000000,0,TO_TIMESTAMP('2017-03-14 15:54:02','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',540030,540012,'Beispiel 1',TO_TIMESTAMP('2017-03-14 15:54:02','YYYY-MM-DD HH24:MI:SS'),100,'B1')
;

-- 14.03.2017 15:54
-- URL zum Konzept
INSERT INTO M_AttributeValue (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsNullFieldValue,M_Attribute_ID,M_AttributeValue_ID,Name,Updated,UpdatedBy,Value) VALUES (1000000,0,TO_TIMESTAMP('2017-03-14 15:54:11','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',540030,540013,'Beispiel 2',TO_TIMESTAMP('2017-03-14 15:54:11','YYYY-MM-DD HH24:MI:SS'),100,'B2')
;

-- 14.03.2017 15:55
-- URL zum Konzept
INSERT INTO M_AttributeSet (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsGuaranteeDate,IsGuaranteeDateMandatory,IsInstanceAttribute,IsLot,IsLotMandatory,IsSerNo,IsSerNoMandatory,MandatoryType,M_AttributeSet_ID,Name,Updated,UpdatedBy) VALUES (1000000,0,TO_TIMESTAMP('2017-03-14 15:55:49','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','N','N','N','N','N','N','Y',540003,'Kategorie',TO_TIMESTAMP('2017-03-14 15:55:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14.03.2017 15:55
-- URL zum Konzept
UPDATE M_AttributeSet mas SET IsInstanceAttribute='Y' WHERE M_AttributeSet_ID=540003 AND IsInstanceAttribute='N' AND (IsSerNo='Y' OR IsLot='Y' OR IsGuaranteeDate='Y' OR EXISTS (SELECT * FROM M_AttributeUse mau INNER JOIN M_Attribute ma ON (mau.M_Attribute_ID=ma.M_Attribute_ID) WHERE mau.M_AttributeSet_ID=mas.M_AttributeSet_ID AND mau.IsActive='Y' AND ma.IsActive='Y' AND ma.IsInstanceAttribute='Y'))
;

-- 14.03.2017 15:56
-- URL zum Konzept
INSERT INTO M_AttributeUse (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,M_Attribute_ID,M_AttributeSet_ID,SeqNo,Updated,UpdatedBy) VALUES (1000000,0,TO_TIMESTAMP('2017-03-14 15:56:29','YYYY-MM-DD HH24:MI:SS'),100,'Y',540030,540003,10,TO_TIMESTAMP('2017-03-14 15:56:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14.03.2017 15:56
-- URL zum Konzept
UPDATE M_AttributeSet mas SET IsInstanceAttribute='Y' WHERE M_AttributeSet_ID=540003 AND IsInstanceAttribute='N' AND (IsSerNo='Y' OR IsLot='Y' OR IsGuaranteeDate='Y' OR EXISTS (SELECT * FROM M_AttributeUse mau INNER JOIN M_Attribute ma ON (mau.M_Attribute_ID=ma.M_Attribute_ID) WHERE mau.M_AttributeSet_ID=mas.M_AttributeSet_ID AND mau.IsActive='Y' AND ma.IsActive='Y' AND ma.IsInstanceAttribute='Y'))
;

-- 14.03.2017 15:56
-- URL zum Konzept
UPDATE M_AttributeSet mas SET IsInstanceAttribute='N' WHERE M_AttributeSet_ID=540003 AND IsInstanceAttribute='Y'	AND IsSerNo='N' AND IsLot='N' AND IsGuaranteeDate='N' AND NOT EXISTS (SELECT * FROM M_AttributeUse mau INNER JOIN M_Attribute ma ON (mau.M_Attribute_ID=ma.M_Attribute_ID) WHERE mau.M_AttributeSet_ID=mas.M_AttributeSet_ID AND mau.IsActive='Y' AND ma.IsActive='Y' AND ma.IsInstanceAttribute='Y')
;

-- 14.03.2017 15:59
-- URL zum Konzept
INSERT INTO M_Product_Category (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,Created,CreatedBy,IsActive,IsDefault,IsPackagingMaterial,IsSelfService,IsSummary,isTradingUnit,M_AttributeSet_ID,MMPolicy,M_Product_Category_ID,Name,PlannedMargin,Updated,UpdatedBy,Value) VALUES (1000000,0,100,TO_TIMESTAMP('2017-03-14 15:59:29','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','N','Y','N','N',540003,'F',540004,'Mitgliedschaft',0,TO_TIMESTAMP('2017-03-14 15:59:29','YYYY-MM-DD HH24:MI:SS'),100,'Mitgliedschaft')
;

-- 14.03.2017 15:59
-- URL zum Konzept
INSERT INTO M_Product_Category_Acct (M_Product_Category_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 540004, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', now(),100,now(),100,p.P_Asset_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM C_AcctSchema_Default p WHERE p.AD_Client_ID=1000000 AND NOT EXISTS (SELECT * FROM M_Product_Category_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_Category_ID=540004)
;


-- 14.03.2017 16:00
-- URL zum Konzept
UPDATE M_Product SET M_Product_Category_ID=540004,Updated=TO_TIMESTAMP('2017-03-14 16:00:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE M_Product_ID=540022
;

-- 14.03.2017 16:01
-- URL zum Konzept
INSERT INTO M_ProductPrice (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_TaxCategory_ID,C_UOM_ID,IsActive,IsAttributeDependant,IsDefault,IsHUPrice,IsSeasonFixedPrice,MatchSeqNo,M_AttributeSetInstance_ID,M_PriceList_Version_ID,M_Product_ID,M_ProductPrice_ID,PriceLimit,PriceList,PriceStd,SeqNo,Updated,UpdatedBy,UseScalePrice) VALUES (1000000,1000000,TO_TIMESTAMP('2017-03-14 16:01:19','YYYY-MM-DD HH24:MI:SS'),100,1000002,100,'Y','Y','N','N','N',10,549213,2002139,540022,540030,0,0,60.000000000000,60,TO_TIMESTAMP('2017-03-14 16:01:19','YYYY-MM-DD HH24:MI:SS'),100,'N')
;

-- 14.03.2017 16:17
-- URL zum Konzept
UPDATE M_Attribute SET IsInstanceAttribute='Y',Updated=TO_TIMESTAMP('2017-03-14 16:17:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE M_Attribute_ID=540030
;

-- 14.03.2017 16:17
-- URL zum Konzept
UPDATE M_AttributeSet mas SET IsInstanceAttribute='Y' WHERE IsInstanceAttribute='N' AND EXISTS (SELECT * FROM M_AttributeUse mau WHERE mas.M_AttributeSet_ID=mau.M_AttributeSet_ID AND mau.M_Attribute_ID=540030)
;