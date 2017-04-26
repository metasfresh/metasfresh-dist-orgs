
-- 2017-04-25T09:37:04.460
-- URL zum Konzept
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,540005,TO_TIMESTAMP('2017-04-25 09:37:04','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000023,0,TO_TIMESTAMP('2017-04-25 09:37:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 2017-04-25T09:37:49.884
-- URL zum Konzept
UPDATE AD_TreeNodeMM SET Parent_ID=540769, SeqNo=0, Updated=now(), UpdatedBy=100 WHERE  Node_ID=1000023 AND AD_Tree_ID=540005
;

-- 2017-04-25T09:37:49.887
-- URL zum Konzept
UPDATE AD_TreeNodeMM SET Parent_ID=540769, SeqNo=1, Updated=now(), UpdatedBy=100 WHERE  Node_ID=110 AND AD_Tree_ID=540005
;

-- 2017-04-25T09:37:49.887
-- URL zum Konzept
UPDATE AD_TreeNodeMM SET Parent_ID=540769, SeqNo=2, Updated=now(), UpdatedBy=100 WHERE  Node_ID=540770 AND AD_Tree_ID=540005
;
