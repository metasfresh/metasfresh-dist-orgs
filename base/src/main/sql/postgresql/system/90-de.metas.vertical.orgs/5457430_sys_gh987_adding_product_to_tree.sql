-- 03.03.2017 11:28
-- URL zum Konzept
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,540005,TO_TIMESTAMP('2017-03-03 11:28:56','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000034,0,TO_TIMESTAMP('2017-03-03 11:28:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 03.03.2017 11:29
-- URL zum Konzept
UPDATE AD_TreeNodeMM SET Parent_ID=540769, SeqNo=0, Updated=now(), UpdatedBy=100 WHERE  Node_ID=1000034 AND AD_Tree_ID=540005
;

-- 03.03.2017 11:29
-- URL zum Konzept
UPDATE AD_TreeNodeMM SET Parent_ID=540769, SeqNo=1, Updated=now(), UpdatedBy=100 WHERE  Node_ID=110 AND AD_Tree_ID=540005
;

-- 03.03.2017 11:29
-- URL zum Konzept
UPDATE AD_TreeNodeMM SET Parent_ID=540769, SeqNo=2, Updated=now(), UpdatedBy=100 WHERE  Node_ID=540770 AND AD_Tree_ID=540005
;



