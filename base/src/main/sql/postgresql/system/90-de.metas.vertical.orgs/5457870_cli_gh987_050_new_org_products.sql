
-- 07.03.2017 17:38
-- URL zum Konzept
INSERT INTO M_Product (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_UOM_ID,Discontinued,Fresh_CropPlanning,Fresh_WashSampleRequired,IsActive,IsBOM,IsCategoryProduct,IsDiverse,IsDropShip,IsExcludeAutoDelivery,IsInvoicePrintDetails,IsPickListPrintDetails,IsPurchased,IsSelfService,IsSold,IsStocked,IsSummary,IsVerified,IsWebStoreFeatured,LowLevel,M_Product_Category_ID,M_Product_ID,Name,Processing,ProductType,SalesRep_ID,ShelfDepth,ShelfHeight,ShelfWidth,UnitsPerPack,UnitsPerPallet,Updated,UpdatedBy,Value,Volume,Weight) VALUES (1000000,540002,TO_TIMESTAMP('2017-03-07 17:38:54','YYYY-MM-DD HH24:MI:SS'),100,100,'N','N','N','Y','N','N','N','N','N','N','N','Y','Y','Y','N','N','N','N',0,1000000,540024,'Mitgliedschaft in Sektion 1','N','I',100,0,0,0,0,0,TO_TIMESTAMP('2017-03-07 17:38:54','YYYY-MM-DD HH24:MI:SS'),100,'m01_s1',0,0)
;

-- 07.03.2017 17:38
-- URL zum Konzept
INSERT INTO M_Product_Trl (AD_Language,M_Product_ID, Description,DocumentNote,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.M_Product_ID, t.Description,t.DocumentNote,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, M_Product t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.M_Product_ID=540024 AND NOT EXISTS (SELECT * FROM M_Product_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.M_Product_ID=t.M_Product_ID)
;

-- 07.03.2017 17:38
-- URL zum Konzept
INSERT INTO M_Product_Acct (M_Product_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 540024, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', now(),100,now(),100,p.P_Asset_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM M_Product_Category_Acct p WHERE p.AD_Client_ID=1000000 AND p.M_Product_Category_ID=1000000 AND NOT EXISTS (SELECT * FROM M_Product_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_ID=540024)
;

-- 07.03.2017 17:38
-- URL zum Konzept
INSERT INTO M_Product_Costing (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,IsActive,M_Product_ID,Updated,UpdatedBy) VALUES (1000000,540002,1000000,TO_TIMESTAMP('2017-03-07 17:38:55','YYYY-MM-DD HH24:MI:SS'),100,'Y',540024,TO_TIMESTAMP('2017-03-07 17:38:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:38
-- URL zum Konzept
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_Cost_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (1000000,1000000,1000000,TO_TIMESTAMP('2017-03-07 17:38:55','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,1000000,540016,1000000,540024,TO_TIMESTAMP('2017-03-07 17:38:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:38
-- URL zum Konzept
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_Cost_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (1000000,1000000,1000000,TO_TIMESTAMP('2017-03-07 17:38:55','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,1000002,540017,1000000,540024,TO_TIMESTAMP('2017-03-07 17:38:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:38
-- URL zum Konzept
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_Cost_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (1000000,1000000,1000000,TO_TIMESTAMP('2017-03-07 17:38:55','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,1000003,540018,1000000,540024,TO_TIMESTAMP('2017-03-07 17:38:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:38
-- URL zum Konzept
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_Cost_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (1000000,1000000,1000000,TO_TIMESTAMP('2017-03-07 17:38:55','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,1000004,540019,1000000,540024,TO_TIMESTAMP('2017-03-07 17:38:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:38
-- URL zum Konzept
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_Cost_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (1000000,1000000,1000000,TO_TIMESTAMP('2017-03-07 17:38:56','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,1000005,540020,1000000,540024,TO_TIMESTAMP('2017-03-07 17:38:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:38
-- URL zum Konzept
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_Cost_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (1000000,1000000,1000000,TO_TIMESTAMP('2017-03-07 17:38:56','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,1000006,540021,1000000,540024,TO_TIMESTAMP('2017-03-07 17:38:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:38
-- URL zum Konzept
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_Cost_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (1000000,1000000,1000000,TO_TIMESTAMP('2017-03-07 17:38:56','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,1000007,540022,1000000,540024,TO_TIMESTAMP('2017-03-07 17:38:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:38
-- URL zum Konzept
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_Cost_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (1000000,540002,1000000,TO_TIMESTAMP('2017-03-07 17:38:56','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,1000000,540023,1000000,540024,TO_TIMESTAMP('2017-03-07 17:38:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:38
-- URL zum Konzept
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_Cost_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (1000000,540002,1000000,TO_TIMESTAMP('2017-03-07 17:38:56','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,1000002,540024,1000000,540024,TO_TIMESTAMP('2017-03-07 17:38:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:38
-- URL zum Konzept
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_Cost_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (1000000,540002,1000000,TO_TIMESTAMP('2017-03-07 17:38:56','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,1000003,540025,1000000,540024,TO_TIMESTAMP('2017-03-07 17:38:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:38
-- URL zum Konzept
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_Cost_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (1000000,540002,1000000,TO_TIMESTAMP('2017-03-07 17:38:57','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,1000004,540026,1000000,540024,TO_TIMESTAMP('2017-03-07 17:38:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:38
-- URL zum Konzept
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_Cost_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (1000000,540002,1000000,TO_TIMESTAMP('2017-03-07 17:38:57','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,1000005,540027,1000000,540024,TO_TIMESTAMP('2017-03-07 17:38:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:38
-- URL zum Konzept
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_Cost_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (1000000,540002,1000000,TO_TIMESTAMP('2017-03-07 17:38:57','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,1000006,540028,1000000,540024,TO_TIMESTAMP('2017-03-07 17:38:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:38
-- URL zum Konzept
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_Cost_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (1000000,540002,1000000,TO_TIMESTAMP('2017-03-07 17:38:57','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,1000007,540029,1000000,540024,TO_TIMESTAMP('2017-03-07 17:38:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:38
-- URL zum Konzept
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_Cost_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (1000000,540003,1000000,TO_TIMESTAMP('2017-03-07 17:38:57','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,1000000,540030,1000000,540024,TO_TIMESTAMP('2017-03-07 17:38:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:38
-- URL zum Konzept
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_Cost_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (1000000,540003,1000000,TO_TIMESTAMP('2017-03-07 17:38:57','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,1000002,540031,1000000,540024,TO_TIMESTAMP('2017-03-07 17:38:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:38
-- URL zum Konzept
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_Cost_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (1000000,540003,1000000,TO_TIMESTAMP('2017-03-07 17:38:57','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,1000003,540032,1000000,540024,TO_TIMESTAMP('2017-03-07 17:38:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:38
-- URL zum Konzept
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_Cost_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (1000000,540003,1000000,TO_TIMESTAMP('2017-03-07 17:38:57','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,1000004,540033,1000000,540024,TO_TIMESTAMP('2017-03-07 17:38:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:38
-- URL zum Konzept
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_Cost_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (1000000,540003,1000000,TO_TIMESTAMP('2017-03-07 17:38:58','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,1000005,540034,1000000,540024,TO_TIMESTAMP('2017-03-07 17:38:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:38
-- URL zum Konzept
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_Cost_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (1000000,540003,1000000,TO_TIMESTAMP('2017-03-07 17:38:58','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,1000006,540035,1000000,540024,TO_TIMESTAMP('2017-03-07 17:38:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:38
-- URL zum Konzept
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_Cost_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (1000000,540003,1000000,TO_TIMESTAMP('2017-03-07 17:38:58','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,1000007,540036,1000000,540024,TO_TIMESTAMP('2017-03-07 17:38:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:38
-- URL zum Konzept
INSERT  INTO AD_TreeNodePR (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID,0, 'Y', now(), 100, now(), 100,t.AD_Tree_ID, 540024, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=1000000 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.AD_Table_ID=208 AND NOT EXISTS (SELECT * FROM AD_TreeNodePR e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=540024)
;

-- 07.03.2017 17:39
-- URL zum Konzept
INSERT INTO M_Product (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_UOM_ID,Discontinued,Fresh_CropPlanning,Fresh_WashSampleRequired,IsActive,IsBOM,IsCategoryProduct,IsDiverse,IsDropShip,IsExcludeAutoDelivery,IsInvoicePrintDetails,IsPickListPrintDetails,IsPurchased,IsSelfService,IsSold,IsStocked,IsSummary,IsVerified,IsWebStoreFeatured,LowLevel,M_Product_Category_ID,M_Product_ID,Name,Processing,ProductType,SalesRep_ID,ShelfDepth,ShelfHeight,ShelfWidth,UnitsPerPack,UnitsPerPallet,Updated,UpdatedBy,Value,Volume,Weight) VALUES (1000000,540003,TO_TIMESTAMP('2017-03-07 17:39:13','YYYY-MM-DD HH24:MI:SS'),100,100,'N','N','N','Y','N','N','N','N','N','N','N','Y','Y','Y','N','N','N','N',0,1000000,540025,'Mitgliedschaft in Sektion 2','N','I',100,0,0,0,0,0,TO_TIMESTAMP('2017-03-07 17:39:13','YYYY-MM-DD HH24:MI:SS'),100,'m01_s2',0,0)
;

-- 07.03.2017 17:39
-- URL zum Konzept
INSERT INTO M_Product_Trl (AD_Language,M_Product_ID, Description,DocumentNote,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.M_Product_ID, t.Description,t.DocumentNote,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, M_Product t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.M_Product_ID=540025 AND NOT EXISTS (SELECT * FROM M_Product_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.M_Product_ID=t.M_Product_ID)
;

-- 07.03.2017 17:39
-- URL zum Konzept
INSERT INTO M_Product_Acct (M_Product_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,P_Asset_Acct,P_Burden_Acct,P_COGS_Acct,P_CostAdjustment_Acct,P_CostOfProduction_Acct,P_Expense_Acct,P_FloorStock_Acct,P_InventoryClearing_Acct,P_InvoicePriceVariance_Acct,P_Labor_Acct,P_MethodChangeVariance_Acct,P_MixVariance_Acct,P_OutsideProcessing_Acct,P_Overhead_Acct,P_PurchasePriceVariance_Acct,P_RateVariance_Acct,P_Revenue_Acct,P_Scrap_Acct,P_TradeDiscountGrant_Acct,P_TradeDiscountRec_Acct,P_UsageVariance_Acct,P_WIP_Acct) SELECT 540025, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', now(),100,now(),100,p.P_Asset_Acct,p.P_Burden_Acct,p.P_COGS_Acct,p.P_CostAdjustment_Acct,p.P_CostOfProduction_Acct,p.P_Expense_Acct,p.P_FloorStock_Acct,p.P_InventoryClearing_Acct,p.P_InvoicePriceVariance_Acct,p.P_Labor_Acct,p.P_MethodChangeVariance_Acct,p.P_MixVariance_Acct,p.P_OutsideProcessing_Acct,p.P_Overhead_Acct,p.P_PurchasePriceVariance_Acct,p.P_RateVariance_Acct,p.P_Revenue_Acct,p.P_Scrap_Acct,p.P_TradeDiscountGrant_Acct,p.P_TradeDiscountRec_Acct,p.P_UsageVariance_Acct,p.P_WIP_Acct FROM M_Product_Category_Acct p WHERE p.AD_Client_ID=1000000 AND p.M_Product_Category_ID=1000000 AND NOT EXISTS (SELECT * FROM M_Product_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Product_ID=540025)
;

-- 07.03.2017 17:39
-- URL zum Konzept
INSERT INTO M_Product_Costing (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,IsActive,M_Product_ID,Updated,UpdatedBy) VALUES (1000000,540003,1000000,TO_TIMESTAMP('2017-03-07 17:39:13','YYYY-MM-DD HH24:MI:SS'),100,'Y',540025,TO_TIMESTAMP('2017-03-07 17:39:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:39
-- URL zum Konzept
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_Cost_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (1000000,1000000,1000000,TO_TIMESTAMP('2017-03-07 17:39:13','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,1000000,540037,1000000,540025,TO_TIMESTAMP('2017-03-07 17:39:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:39
-- URL zum Konzept
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_Cost_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (1000000,1000000,1000000,TO_TIMESTAMP('2017-03-07 17:39:13','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,1000002,540038,1000000,540025,TO_TIMESTAMP('2017-03-07 17:39:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:39
-- URL zum Konzept
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_Cost_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (1000000,1000000,1000000,TO_TIMESTAMP('2017-03-07 17:39:14','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,1000003,540039,1000000,540025,TO_TIMESTAMP('2017-03-07 17:39:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:39
-- URL zum Konzept
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_Cost_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (1000000,1000000,1000000,TO_TIMESTAMP('2017-03-07 17:39:14','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,1000004,540040,1000000,540025,TO_TIMESTAMP('2017-03-07 17:39:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:39
-- URL zum Konzept
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_Cost_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (1000000,1000000,1000000,TO_TIMESTAMP('2017-03-07 17:39:14','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,1000005,540041,1000000,540025,TO_TIMESTAMP('2017-03-07 17:39:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:39
-- URL zum Konzept
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_Cost_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (1000000,1000000,1000000,TO_TIMESTAMP('2017-03-07 17:39:14','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,1000006,540042,1000000,540025,TO_TIMESTAMP('2017-03-07 17:39:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:39
-- URL zum Konzept
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_Cost_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (1000000,1000000,1000000,TO_TIMESTAMP('2017-03-07 17:39:15','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,1000007,540043,1000000,540025,TO_TIMESTAMP('2017-03-07 17:39:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:39
-- URL zum Konzept
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_Cost_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (1000000,540002,1000000,TO_TIMESTAMP('2017-03-07 17:39:15','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,1000000,540044,1000000,540025,TO_TIMESTAMP('2017-03-07 17:39:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:39
-- URL zum Konzept
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_Cost_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (1000000,540002,1000000,TO_TIMESTAMP('2017-03-07 17:39:15','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,1000002,540045,1000000,540025,TO_TIMESTAMP('2017-03-07 17:39:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:39
-- URL zum Konzept
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_Cost_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (1000000,540002,1000000,TO_TIMESTAMP('2017-03-07 17:39:15','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,1000003,540046,1000000,540025,TO_TIMESTAMP('2017-03-07 17:39:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:39
-- URL zum Konzept
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_Cost_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (1000000,540002,1000000,TO_TIMESTAMP('2017-03-07 17:39:16','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,1000004,540047,1000000,540025,TO_TIMESTAMP('2017-03-07 17:39:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:39
-- URL zum Konzept
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_Cost_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (1000000,540002,1000000,TO_TIMESTAMP('2017-03-07 17:39:16','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,1000005,540048,1000000,540025,TO_TIMESTAMP('2017-03-07 17:39:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:39
-- URL zum Konzept
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_Cost_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (1000000,540002,1000000,TO_TIMESTAMP('2017-03-07 17:39:16','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,1000006,540049,1000000,540025,TO_TIMESTAMP('2017-03-07 17:39:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:39
-- URL zum Konzept
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_Cost_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (1000000,540002,1000000,TO_TIMESTAMP('2017-03-07 17:39:16','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,1000007,540050,1000000,540025,TO_TIMESTAMP('2017-03-07 17:39:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:39
-- URL zum Konzept
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_Cost_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (1000000,540003,1000000,TO_TIMESTAMP('2017-03-07 17:39:17','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,1000000,540051,1000000,540025,TO_TIMESTAMP('2017-03-07 17:39:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:39
-- URL zum Konzept
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_Cost_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (1000000,540003,1000000,TO_TIMESTAMP('2017-03-07 17:39:17','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,1000002,540052,1000000,540025,TO_TIMESTAMP('2017-03-07 17:39:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:39
-- URL zum Konzept
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_Cost_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (1000000,540003,1000000,TO_TIMESTAMP('2017-03-07 17:39:17','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,1000003,540053,1000000,540025,TO_TIMESTAMP('2017-03-07 17:39:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:39
-- URL zum Konzept
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_Cost_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (1000000,540003,1000000,TO_TIMESTAMP('2017-03-07 17:39:17','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,1000004,540054,1000000,540025,TO_TIMESTAMP('2017-03-07 17:39:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:39
-- URL zum Konzept
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_Cost_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (1000000,540003,1000000,TO_TIMESTAMP('2017-03-07 17:39:18','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,1000005,540055,1000000,540025,TO_TIMESTAMP('2017-03-07 17:39:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:39
-- URL zum Konzept
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_Cost_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (1000000,540003,1000000,TO_TIMESTAMP('2017-03-07 17:39:18','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,1000006,540056,1000000,540025,TO_TIMESTAMP('2017-03-07 17:39:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:39
-- URL zum Konzept
INSERT INTO M_Cost (AD_Client_ID,AD_Org_ID,C_AcctSchema_ID,Created,CreatedBy,CumulatedAmt,CumulatedQty,CurrentCostPrice,CurrentQty,FutureCostPrice,IsActive,M_AttributeSetInstance_ID,M_CostElement_ID,M_Cost_ID,M_CostType_ID,M_Product_ID,Updated,UpdatedBy) VALUES (1000000,540003,1000000,TO_TIMESTAMP('2017-03-07 17:39:18','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0,0,'Y',0,1000007,540057,1000000,540025,TO_TIMESTAMP('2017-03-07 17:39:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 17:39
-- URL zum Konzept
INSERT  INTO AD_TreeNodePR (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID,0, 'Y', now(), 100, now(), 100,t.AD_Tree_ID, 540025, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=1000000 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.AD_Table_ID=208 AND NOT EXISTS (SELECT * FROM AD_TreeNodePR e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=540025)
;
