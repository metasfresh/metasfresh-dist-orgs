-- 03.03.2017 11:59
-- URL zum Konzept
INSERT INTO AD_Org (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsSummary,Name,Updated,UpdatedBy,Value) VALUES (1000000,540002,TO_TIMESTAMP('2017-03-03 11:59:49','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','2nd',TO_TIMESTAMP('2017-03-03 11:59:49','YYYY-MM-DD HH24:MI:SS'),100,'002')
;

-- 03.03.2017 11:59
-- URL zum Konzept
INSERT INTO AD_OrgInfo (AD_Client_ID,AD_Org_ID,Created,CreatedBy,DUNS,IsActive,TaxID,Updated,UpdatedBy) VALUES (1000000,540002,TO_TIMESTAMP('2017-03-03 11:59:49','YYYY-MM-DD HH24:MI:SS'),100,'?','Y','?',TO_TIMESTAMP('2017-03-03 11:59:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 03.03.2017 11:59
-- URL zum Konzept
INSERT  INTO AD_TreeNode (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID,0, 'Y', now(), 100, now(), 100,t.AD_Tree_ID, 540002, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.AD_Table_ID=155 AND NOT EXISTS (SELECT * FROM AD_TreeNode e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=540002)
;