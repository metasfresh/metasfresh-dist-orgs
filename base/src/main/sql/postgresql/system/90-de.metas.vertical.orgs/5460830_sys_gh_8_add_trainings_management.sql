-- 2017-04-26T17:22:47.317
-- URL zum Konzept
UPDATE AD_ColumnCallout SET IsActive='N',Updated=TO_TIMESTAMP('2017-04-26 17:22:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ColumnCallout_ID=540823
;

-- 2017-04-26T17:25:53.826
-- URL zum Konzept
UPDATE AD_Window SET Name='Seminare',Updated=TO_TIMESTAMP('2017-04-26 17:25:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=540011
;

-- 2017-04-26T17:25:53.832
-- URL zum Konzept
UPDATE AD_Window_Trl SET IsTranslated='N' WHERE AD_Window_ID=540011
;

-- 2017-04-26T17:25:53.846
-- URL zum Konzept
UPDATE AD_Menu SET Description='Define call center bundles', IsActive='Y', Name='Seminare',Updated=TO_TIMESTAMP('2017-04-26 17:25:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=540017
;

-- 2017-04-26T17:25:53.848
-- URL zum Konzept
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=540017
;

-- 2017-04-26T17:26:01.523
-- URL zum Konzept
UPDATE AD_Tab SET Name='Seminar',Updated=TO_TIMESTAMP('2017-04-26 17:26:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=540031
;

-- 2017-04-26T17:26:01.529
-- URL zum Konzept
UPDATE AD_Tab_Trl SET IsTranslated='N' WHERE AD_Tab_ID=540031
;

-- 2017-04-26T17:26:05.487
-- URL zum Konzept
UPDATE AD_Tab SET Name='Teilnehmer',Updated=TO_TIMESTAMP('2017-04-26 17:26:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=540032
;

-- 2017-04-26T17:26:05.492
-- URL zum Konzept
UPDATE AD_Tab_Trl SET IsTranslated='N' WHERE AD_Tab_ID=540032
;

-- 2017-04-26T17:26:33.057
-- URL zum Konzept
INSERT INTO AD_UI_Section (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_UI_Section_ID,Created,CreatedBy,IsActive,Name,SeqNo,Updated,UpdatedBy) VALUES (0,0,540031,540143,TO_TIMESTAMP('2017-04-26 17:26:32','YYYY-MM-DD HH24:MI:SS'),100,'Y','1',10,TO_TIMESTAMP('2017-04-26 17:26:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 2017-04-26T17:26:39.354
-- URL zum Konzept
INSERT INTO AD_UI_Column (AD_Client_ID,AD_Org_ID,AD_UI_Column_ID,AD_UI_Section_ID,Created,CreatedBy,IsActive,SeqNo,Updated,UpdatedBy) VALUES (0,0,540195,540143,TO_TIMESTAMP('2017-04-26 17:26:39','YYYY-MM-DD HH24:MI:SS'),100,'Y',10,TO_TIMESTAMP('2017-04-26 17:26:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 2017-04-26T17:26:47.433
-- URL zum Konzept
INSERT INTO AD_UI_ElementGroup (AD_Client_ID,AD_Org_ID,AD_UI_Column_ID,AD_UI_ElementGroup_ID,Created,CreatedBy,IsActive,Name,SeqNo,UIStyle,Updated,UpdatedBy) VALUES (0,0,540195,540296,TO_TIMESTAMP('2017-04-26 17:26:47','YYYY-MM-DD HH24:MI:SS'),100,'Y','1',10,'primary',TO_TIMESTAMP('2017-04-26 17:26:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 2017-04-26T17:27:02.639
-- URL zum Konzept
INSERT INTO AD_UI_Element (AD_Client_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,AD_UI_ElementGroup_ID,AD_UI_Element_ID,Created,CreatedBy,IsActive,IsAdvancedField,IsDisplayed,IsDisplayedGrid,IsDisplayed_SideList,Name,SeqNo,SeqNoGrid,SeqNo_SideList,Updated,UpdatedBy) VALUES (0,540508,0,540031,540296,543291,TO_TIMESTAMP('2017-04-26 17:27:02','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','Y','N','N','sektion',10,0,0,TO_TIMESTAMP('2017-04-26 17:27:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 2017-04-26T17:27:17.387
-- URL zum Konzept
INSERT INTO AD_UI_Element (AD_Client_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,AD_UI_ElementGroup_ID,AD_UI_Element_ID,Created,CreatedBy,IsActive,IsAdvancedField,IsDisplayed,IsDisplayedGrid,IsDisplayed_SideList,Name,SeqNo,SeqNoGrid,SeqNo_SideList,Updated,UpdatedBy) VALUES (0,540509,0,540031,540296,543292,TO_TIMESTAMP('2017-04-26 17:27:17','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','Y','N','N','Name',20,0,0,TO_TIMESTAMP('2017-04-26 17:27:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 2017-04-26T17:27:34.590
-- URL zum Konzept
INSERT INTO AD_UI_Element (AD_Client_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,AD_UI_ElementGroup_ID,AD_UI_Element_ID,Created,CreatedBy,IsActive,IsAdvancedField,IsDisplayed,IsDisplayedGrid,IsDisplayed_SideList,Name,SeqNo,SeqNoGrid,SeqNo_SideList,Updated,UpdatedBy) VALUES (0,540511,0,540031,540296,543293,TO_TIMESTAMP('2017-04-26 17:27:34','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','Y','N','N','Kommentar/Hilfe_Help_Kommentar/Hilfe',30,0,0,TO_TIMESTAMP('2017-04-26 17:27:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 2017-04-26T17:27:59.011
-- URL zum Konzept
UPDATE AD_UI_Element SET IsDisplayedGrid='Y', SeqNoGrid=10,Updated=TO_TIMESTAMP('2017-04-26 17:27:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_UI_Element_ID=543291
;

-- 2017-04-26T17:27:59.014
-- URL zum Konzept
UPDATE AD_UI_Element SET IsDisplayedGrid='Y', SeqNoGrid=20,Updated=TO_TIMESTAMP('2017-04-26 17:27:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_UI_Element_ID=543292
;

-- 2017-04-26T17:28:07.015
-- URL zum Konzept
INSERT INTO AD_UI_Element (AD_Client_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,AD_UI_ElementGroup_ID,AD_UI_Element_ID,Created,CreatedBy,IsActive,IsAdvancedField,IsDisplayed,IsDisplayedGrid,IsDisplayed_SideList,Name,SeqNo,SeqNoGrid,SeqNo_SideList,Updated,UpdatedBy) VALUES (0,540510,0,540031,540296,543294,TO_TIMESTAMP('2017-04-26 17:28:06','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','Y','N','N','Beschreibung_Description_Beschreibung',40,0,0,TO_TIMESTAMP('2017-04-26 17:28:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 2017-04-26T17:28:12.653
-- URL zum Konzept
UPDATE AD_UI_Element SET IsDisplayedGrid='Y', SeqNoGrid=30,Updated=TO_TIMESTAMP('2017-04-26 17:28:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_UI_Element_ID=543294
;

-- 2017-04-26T17:29:13.208
-- URL zum Konzept
UPDATE AD_UI_Element SET SeqNo=25,Updated=TO_TIMESTAMP('2017-04-26 17:29:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_UI_Element_ID=543294
;

-- 2017-04-26T17:29:40.540
-- URL zum Konzept
INSERT INTO AD_UI_Section (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_UI_Section_ID,Created,CreatedBy,IsActive,Name,SeqNo,Updated,UpdatedBy) VALUES (0,0,540032,540144,TO_TIMESTAMP('2017-04-26 17:29:40','YYYY-MM-DD HH24:MI:SS'),100,'Y','1',10,TO_TIMESTAMP('2017-04-26 17:29:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 2017-04-26T17:29:43.068
-- URL zum Konzept
INSERT INTO AD_UI_Column (AD_Client_ID,AD_Org_ID,AD_UI_Column_ID,AD_UI_Section_ID,Created,CreatedBy,IsActive,SeqNo,Updated,UpdatedBy) VALUES (0,0,540196,540144,TO_TIMESTAMP('2017-04-26 17:29:42','YYYY-MM-DD HH24:MI:SS'),100,'Y',10,TO_TIMESTAMP('2017-04-26 17:29:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 2017-04-26T17:29:48.570
-- URL zum Konzept
INSERT INTO AD_UI_ElementGroup (AD_Client_ID,AD_Org_ID,AD_UI_Column_ID,AD_UI_ElementGroup_ID,Created,CreatedBy,IsActive,Name,SeqNo,Updated,UpdatedBy) VALUES (0,0,540196,540297,TO_TIMESTAMP('2017-04-26 17:29:48','YYYY-MM-DD HH24:MI:SS'),100,'Y','1',10,TO_TIMESTAMP('2017-04-26 17:29:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 2017-04-26T17:29:59.890
-- URL zum Konzept
INSERT INTO AD_UI_Element (AD_Client_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,AD_UI_ElementGroup_ID,AD_UI_Element_ID,Created,CreatedBy,IsActive,IsAdvancedField,IsDisplayed,IsDisplayedGrid,IsDisplayed_SideList,Name,SeqNo,SeqNoGrid,SeqNo_SideList,Updated,UpdatedBy) VALUES (0,540520,0,540032,540297,543295,TO_TIMESTAMP('2017-04-26 17:29:59','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','Y','N','N','Firma/Kontakt_C_BPartner_ID_Business Partner',10,0,0,TO_TIMESTAMP('2017-04-26 17:29:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 2017-04-26T17:30:10.238
-- URL zum Konzept
INSERT INTO AD_UI_Element (AD_Client_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,AD_UI_ElementGroup_ID,AD_UI_Element_ID,Created,CreatedBy,IsActive,IsAdvancedField,IsDisplayed,IsDisplayedGrid,IsDisplayed_SideList,Name,SeqNo,SeqNoGrid,SeqNo_SideList,Updated,UpdatedBy) VALUES (0,540521,0,540032,540297,543296,TO_TIMESTAMP('2017-04-26 17:30:10','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','Y','N','N','Lieferkontakt_AD_User_ID_Ansprechpartner',20,0,0,TO_TIMESTAMP('2017-04-26 17:30:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 2017-04-26T17:30:23.238
-- URL zum Konzept
INSERT INTO AD_UI_Element (AD_Client_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,AD_UI_ElementGroup_ID,AD_UI_Element_ID,Created,CreatedBy,IsActive,IsAdvancedField,IsDisplayed,IsDisplayedGrid,IsDisplayed_SideList,Name,SeqNo,SeqNoGrid,SeqNo_SideList,Updated,UpdatedBy) VALUES (0,540685,0,540032,540297,543297,TO_TIMESTAMP('2017-04-26 17:30:22','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','Y','N','N','Status_R_Status_ID_Status',30,0,0,TO_TIMESTAMP('2017-04-26 17:30:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 2017-04-26T17:30:47.534
-- URL zum Konzept
UPDATE AD_UI_Element SET IsDisplayedGrid='Y', SeqNoGrid=10,Updated=TO_TIMESTAMP('2017-04-26 17:30:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_UI_Element_ID=543295
;

-- 2017-04-26T17:30:47.538
-- URL zum Konzept
UPDATE AD_UI_Element SET IsDisplayedGrid='Y', SeqNoGrid=20,Updated=TO_TIMESTAMP('2017-04-26 17:30:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_UI_Element_ID=543296
;

-- 2017-04-26T17:30:47.542
-- URL zum Konzept
UPDATE AD_UI_Element SET IsDisplayedGrid='Y', SeqNoGrid=30,Updated=TO_TIMESTAMP('2017-04-26 17:30:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_UI_Element_ID=543297
;

-- 2017-04-26T17:31:54.442
-- URL zum Konzept
INSERT INTO R_StatusCategory (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsDefault,Name,R_StatusCategory_ID,Updated,UpdatedBy) VALUES (0,0,TO_TIMESTAMP('2017-04-26 17:31:54','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','Seminar',540005,TO_TIMESTAMP('2017-04-26 17:31:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 2017-04-26T17:32:08.274
-- URL zum Konzept
UPDATE AD_Sequence SET CurrentNext = CurrentNext + ? WHERE AD_Sequence_ID = ? RETURNING CurrentNext - ?
;

-- 2017-04-26T17:32:08.280
-- URL zum Konzept
INSERT INTO R_Status (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsClosed,IsDefault,IsFinalClose,IsOpen,IsWebCanUpdate,Name,R_StatusCategory_ID,R_Status_ID,SeqNo,TimeoutDays,Updated,UpdatedBy,Value) VALUES (0,0,TO_TIMESTAMP('2017-04-26 17:32:07','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','N','N','Y','N','vorgemerkt',540005,540015,0,0,TO_TIMESTAMP('2017-04-26 17:32:07','YYYY-MM-DD HH24:MI:SS'),100,'10000000')
;

-- 2017-04-26T17:32:14.467
-- URL zum Konzept
UPDATE AD_Sequence SET CurrentNext = CurrentNext + ? WHERE AD_Sequence_ID = ? RETURNING CurrentNext - ?
;

-- 2017-04-26T17:32:14.473
-- URL zum Konzept
INSERT INTO R_Status (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsClosed,IsDefault,IsFinalClose,IsOpen,IsWebCanUpdate,Name,R_StatusCategory_ID,R_Status_ID,SeqNo,TimeoutDays,Updated,UpdatedBy,Value) VALUES (0,0,TO_TIMESTAMP('2017-04-26 17:32:14','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','N','N','N','N','anmeldet',540005,540016,0,0,TO_TIMESTAMP('2017-04-26 17:32:14','YYYY-MM-DD HH24:MI:SS'),100,'10000001')
;

-- 2017-04-26T17:32:28.100
-- URL zum Konzept
UPDATE R_Status SET Name='geplant',Updated=TO_TIMESTAMP('2017-04-26 17:32:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE R_Status_ID=540015
;

-- 2017-04-26T17:32:34.689
-- URL zum Konzept
UPDATE R_Status SET Name='Anmeldefrist',Updated=TO_TIMESTAMP('2017-04-26 17:32:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE R_Status_ID=540016
;

-- 2017-04-26T17:32:41.819
-- URL zum Konzept
UPDATE AD_Sequence SET CurrentNext = CurrentNext + ? WHERE AD_Sequence_ID = ? RETURNING CurrentNext - ?
;

-- 2017-04-26T17:32:41.824
-- URL zum Konzept
INSERT INTO R_Status (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsClosed,IsDefault,IsFinalClose,IsOpen,IsWebCanUpdate,Name,R_StatusCategory_ID,R_Status_ID,SeqNo,TimeoutDays,Updated,UpdatedBy,Value) VALUES (0,0,TO_TIMESTAMP('2017-04-26 17:32:41','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','N','N','N','N','Durchgeführt',540005,540017,0,0,TO_TIMESTAMP('2017-04-26 17:32:41','YYYY-MM-DD HH24:MI:SS'),100,'10000002')
;

-- 2017-04-26T17:32:49.294
-- URL zum Konzept
INSERT INTO R_RequestType (AD_Client_ID,AD_Org_ID,AutoDueDateDays,CCM_Default,ConfidentialType,Created,CreatedBy,DueDateTolerance,IsActive,IsAutoChangeRequest,IsConfidentialInfo,IsDefault,IsDefaultForEMail,IsDefaultForLetter,IsEMailWhenDue,IsEMailWhenOverdue,IsIndexed,IsInvoiced,IsSelfService,IsUseForPartnerRequestWindow,Name,R_RequestType_ID,R_StatusCategory_ID,Updated,UpdatedBy) VALUES (0,0,0,'N','C',TO_TIMESTAMP('2017-04-26 17:32:48','YYYY-MM-DD HH24:MI:SS'),100,7,'Y','N','N','N','N','N','N','N','N','N','Y','N','Seminar',540009,540005,TO_TIMESTAMP('2017-04-26 17:32:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 2017-04-26T17:34:07.157
-- URL zum Konzept
INSERT INTO AD_UI_Element (AD_Client_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,AD_UI_ElementGroup_ID,AD_UI_Element_ID,Created,CreatedBy,IsActive,IsAdvancedField,IsDisplayed,IsDisplayedGrid,IsDisplayed_SideList,Name,SeqNo,SeqNoGrid,SeqNo_SideList,Updated,UpdatedBy) VALUES (0,540513,0,540031,540296,543298,TO_TIMESTAMP('2017-04-26 17:34:06','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','Y','N','N','Kategorie_R_Category_ID_Category',40,0,0,TO_TIMESTAMP('2017-04-26 17:34:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 2017-04-26T17:34:37.504
-- URL zum Konzept
INSERT INTO R_Category (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,Name,R_Category_ID,Updated,UpdatedBy) VALUES (0,0,TO_TIMESTAMP('2017-04-26 17:34:37','YYYY-MM-DD HH24:MI:SS'),100,'Y','Seminar',540002,TO_TIMESTAMP('2017-04-26 17:34:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 2017-04-26T17:35:22.900
-- URL zum Konzept
INSERT INTO R_Group (AD_Client_ID,AD_Org_ID,CCM_Bundle_Status,Created,CreatedBy,CreateProspects,IsActive,Name,R_Group_ID,Updated,UpdatedBy) VALUES (0,0,'NW',TO_TIMESTAMP('2017-04-26 17:35:22','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','Seminar',540002,TO_TIMESTAMP('2017-04-26 17:35:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 2017-04-26T17:37:01.284
-- URL zum Konzept
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2017-04-26 17:37:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=540200
;

-- 2017-04-26T17:38:27.974
-- URL zum Konzept
UPDATE AD_Column SET ColumnSQL='', Help='Status if the request (open, closed, investigating, ..) (SELECT rq.R_Status_ID FROM R_Request rq WHERE rq.R_Request_ID=R_Group_Prospect.R_Request_ID)', IsUpdateable='Y',Updated=TO_TIMESTAMP('2017-04-26 17:38:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=540200
;

-- 2017-04-26T17:38:27.979
-- URL zum Konzept
UPDATE AD_Field SET Name='Status', Description='Request Status', Help='Status if the request (open, closed, investigating, ..) (SELECT rq.R_Status_ID FROM R_Request rq WHERE rq.R_Request_ID=R_Group_Prospect.R_Request_ID)' WHERE AD_Column_ID=540200 AND IsCentrallyMaintained='Y'
;

-- 2017-04-26T17:38:48.651
-- URL zum Konzept
/* DDL */ SELECT public.db_alter_table('r_group_prospect','ALTER TABLE public.R_Group_Prospect ADD COLUMN R_Status_ID NUMERIC(10)')
;

-- 2017-04-26T17:39:33.247
-- URL zum Konzept
UPDATE R_Status SET Name='angemeldet',Updated=TO_TIMESTAMP('2017-04-26 17:39:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE R_Status_ID=540016
;

-- 2017-04-26T17:39:38.079
-- URL zum Konzept
UPDATE R_Status SET Name='teilgenommen',Updated=TO_TIMESTAMP('2017-04-26 17:39:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE R_Status_ID=540017
;

-- 2017-04-26T17:39:42.053
-- URL zum Konzept
DELETE FROM R_Status WHERE R_Status_ID=540015
;

-- 2017-04-26T17:40:19.966
-- URL zum Konzept
UPDATE AD_Column SET AD_Reference_ID=19,Updated=TO_TIMESTAMP('2017-04-26 17:40:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=540200
;

-- 2017-04-26T17:41:26.596
-- URL zum Konzept
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,540354,'R_StatusCategory_ID=540005',TO_TIMESTAMP('2017-04-26 17:41:26','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','Seminare','S',TO_TIMESTAMP('2017-04-26 17:41:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 2017-04-26T17:42:16.193
-- URL zum Konzept
UPDATE AD_Val_Rule SET Code='R_Status.R_StatusCategory_ID=540005',Updated=TO_TIMESTAMP('2017-04-26 17:42:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=540354
;

-- 2017-04-26T17:42:58.432
-- URL zum Konzept
UPDATE AD_Column SET AD_Val_Rule_ID=540354,Updated=TO_TIMESTAMP('2017-04-26 17:42:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=540200
;

-- 2017-04-26T17:45:12.286
-- URL zum Konzept
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,540005,TO_TIMESTAMP('2017-04-26 17:45:12','YYYY-MM-DD HH24:MI:SS'),100,'Y',540017,0,TO_TIMESTAMP('2017-04-26 17:45:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 2017-04-26T17:45:15.491
-- URL zum Konzept
UPDATE AD_TreeNodeMM SET Parent_ID=540769, SeqNo=0, Updated=now(), UpdatedBy=100 WHERE  Node_ID=540017 AND AD_Tree_ID=540005
;

-- 2017-04-26T17:45:15.497
-- URL zum Konzept
UPDATE AD_TreeNodeMM SET Parent_ID=540769, SeqNo=1, Updated=now(), UpdatedBy=100 WHERE  Node_ID=1000023 AND AD_Tree_ID=540005
;

-- 2017-04-26T17:45:15.498
-- URL zum Konzept
UPDATE AD_TreeNodeMM SET Parent_ID=540769, SeqNo=2, Updated=now(), UpdatedBy=100 WHERE  Node_ID=110 AND AD_Tree_ID=540005
;

-- 2017-04-26T17:45:15.499
-- URL zum Konzept
UPDATE AD_TreeNodeMM SET Parent_ID=540769, SeqNo=3, Updated=now(), UpdatedBy=100 WHERE  Node_ID=540770 AND AD_Tree_ID=540005
;

-- 2017-04-26T17:50:03.816
-- URL zum Konzept
UPDATE AD_Menu SET IsCreateNew='Y', WEBUI_NameBrowse='Seminare', WEBUI_NameNew='Neues Seminar', WEBUI_NameNewBreadcrumb='Neu',Updated=TO_TIMESTAMP('2017-04-26 17:50:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=540017
;

-- 2017-04-26T17:50:03.821
-- URL zum Konzept
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=540017
;

-- 2017-04-26T17:54:16.982
-- URL zum Konzept
UPDATE AD_Window SET IsBetaFunctionality='N',Updated=TO_TIMESTAMP('2017-04-26 17:54:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=540011
;

