-- 07.03.2017 15:58
-- URL zum Konzept
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,540005,TO_TIMESTAMP('2017-03-07 15:58:13','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000050,0,TO_TIMESTAMP('2017-03-07 15:58:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 15:58
-- URL zum Konzept
UPDATE AD_TreeNodeMM SET Parent_ID=1000050, SeqNo=0, Updated=now(), UpdatedBy=100 WHERE  Node_ID=1000034 AND AD_Tree_ID=540005
;

-- 07.03.2017 15:58
-- URL zum Konzept
UPDATE AD_Menu SET IsCreateNew='Y', WEBUI_NameNew='Neues Mitglied',Updated=TO_TIMESTAMP('2017-03-07 15:58:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=110
;

-- 07.03.2017 15:58
-- URL zum Konzept
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=110
;

-- 07.03.2017 15:59
-- URL zum Konzept
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=now(), UpdatedBy=100 WHERE  Node_ID=540769 AND AD_Tree_ID=540005
;

-- 07.03.2017 15:59
-- URL zum Konzept
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=now(), UpdatedBy=100 WHERE  Node_ID=540171 AND AD_Tree_ID=540005
;

-- 07.03.2017 15:59
-- URL zum Konzept
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=now(), UpdatedBy=100 WHERE  Node_ID=540002 AND AD_Tree_ID=540005
;

-- 07.03.2017 15:59
-- URL zum Konzept
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=now(), UpdatedBy=100 WHERE  Node_ID=540001 AND AD_Tree_ID=540005
;

-- 07.03.2017 15:59
-- URL zum Konzept
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=now(), UpdatedBy=100 WHERE  Node_ID=540772 AND AD_Tree_ID=540005
;

-- 07.03.2017 15:59
-- URL zum Konzept
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=now(), UpdatedBy=100 WHERE  Node_ID=1000050 AND AD_Tree_ID=540005
;

-- 07.03.2017 16:02
-- URL zum Konzept
UPDATE AD_Field SET DefaultValue='540003',Updated=TO_TIMESTAMP('2017-03-07 16:02:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=540003
;

-- 07.03.2017 16:20
-- URL zum Konzept
UPDATE AD_Tab SET HasTree='N',Updated=TO_TIMESTAMP('2017-03-07 16:20:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=143
;

-- 07.03.2017 16:23
-- URL zum Konzept
INSERT INTO AD_UI_Section (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_UI_Section_ID,Created,CreatedBy,IsActive,Name,SeqNo,Updated,UpdatedBy) VALUES (0,0,143,540076,TO_TIMESTAMP('2017-03-07 16:23:35','YYYY-MM-DD HH24:MI:SS'),100,'Y','1',10,TO_TIMESTAMP('2017-03-07 16:23:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 16:23
-- URL zum Konzept
INSERT INTO AD_UI_Column (AD_Client_ID,AD_Org_ID,AD_UI_Column_ID,AD_UI_Section_ID,Created,CreatedBy,IsActive,SeqNo,Updated,UpdatedBy) VALUES (0,0,540108,540076,TO_TIMESTAMP('2017-03-07 16:23:40','YYYY-MM-DD HH24:MI:SS'),100,'Y',10,TO_TIMESTAMP('2017-03-07 16:23:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 16:23
-- URL zum Konzept
INSERT INTO AD_UI_ElementGroup (AD_Client_ID,AD_Org_ID,AD_UI_Column_ID,AD_UI_ElementGroup_ID,Created,CreatedBy,IsActive,Name,SeqNo,Updated,UpdatedBy) VALUES (0,0,540108,540160,TO_TIMESTAMP('2017-03-07 16:23:44','YYYY-MM-DD HH24:MI:SS'),100,'Y','1',10,TO_TIMESTAMP('2017-03-07 16:23:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 16:24
-- URL zum Konzept
INSERT INTO AD_UI_Element (AD_Client_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,AD_UI_ElementGroup_ID,AD_UI_Element_ID,Created,CreatedBy,IsActive,IsAdvancedField,IsDisplayed,IsDisplayedGrid,IsDisplayed_SideList,Name,SeqNo,SeqNoGrid,SeqNo_SideList,Updated,UpdatedBy) VALUES (0,440,0,143,540160,542029,TO_TIMESTAMP('2017-03-07 16:24:08','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','Y','N','N','Org',10,0,0,TO_TIMESTAMP('2017-03-07 16:24:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 16:24
-- URL zum Konzept
INSERT INTO AD_UI_Element (AD_Client_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,AD_UI_ElementGroup_ID,AD_UI_Element_ID,Created,CreatedBy,IsActive,IsAdvancedField,IsDisplayed,IsDisplayedGrid,IsDisplayed_SideList,Name,SeqNo,SeqNoGrid,SeqNo_SideList,Updated,UpdatedBy) VALUES (0,441,0,143,540160,542030,TO_TIMESTAMP('2017-03-07 16:24:17','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','Y','N','N','name',20,0,0,TO_TIMESTAMP('2017-03-07 16:24:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 16:24
-- URL zum Konzept
UPDATE AD_UI_Element SET IsDisplayedGrid='Y', SeqNoGrid=10,Updated=TO_TIMESTAMP('2017-03-07 16:24:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_UI_Element_ID=542029
;

-- 07.03.2017 16:24
-- URL zum Konzept
UPDATE AD_UI_Element SET IsDisplayedGrid='Y', SeqNoGrid=20,Updated=TO_TIMESTAMP('2017-03-07 16:24:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_UI_Element_ID=542030
;

-- 07.03.2017 16:25
-- URL zum Konzept
INSERT INTO AD_UI_Element (AD_Client_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,AD_UI_ElementGroup_ID,AD_UI_Element_ID,Created,CreatedBy,IsActive,IsAdvancedField,IsDisplayed,IsDisplayedGrid,IsDisplayed_SideList,Name,SeqNo,SeqNoGrid,SeqNo_SideList,Updated,UpdatedBy) VALUES (0,939,0,143,540160,542031,TO_TIMESTAMP('2017-03-07 16:25:42','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','Y','N','N','value',30,0,0,TO_TIMESTAMP('2017-03-07 16:25:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07.03.2017 16:25
-- URL zum Konzept
UPDATE AD_UI_Element SET IsDisplayedGrid='Y', SeqNoGrid=30,Updated=TO_TIMESTAMP('2017-03-07 16:25:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_UI_Element_ID=542031
;

