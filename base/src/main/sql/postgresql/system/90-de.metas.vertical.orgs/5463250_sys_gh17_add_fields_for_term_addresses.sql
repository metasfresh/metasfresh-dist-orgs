
-- 2017-05-22T14:42:05.040
-- URL zum Konzept
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AllowZoomTo,ColumnName,Created,CreatedBy,DDL_NoForeignKey,Description,EntityType,FieldLength,Help,IsActive,IsAdvancedText,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsCalculated,IsDimension,IsDLMPartitionBoundary,IsEncrypted,IsGenericZoomKeyColumn,IsGenericZoomOrigin,IsIdentifier,IsKey,IsLazyLoading,IsMandatory,IsParent,IsSelectionColumn,IsStaleable,IsSyncDatabase,IsTranslated,IsUpdateable,IsUseDocSequence,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,556816,618,0,15,293,'N','ValidTo',TO_TIMESTAMP('2017-05-22 14:42:04','YYYY-MM-DD HH24:MI:SS'),100,'N','Gültig bis inklusiv (letzter Tag)','D',7,'"Gültig bis" bezeichnet den letzten Tag eines Gültigkeitzeitraumes.','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','Gültig bis',0,TO_TIMESTAMP('2017-05-22 14:42:04','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 2017-05-22T14:42:05.044
-- URL zum Konzept
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=556816 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 2017-05-22T14:42:07.879
-- URL zum Konzept
/* DDL */ SELECT public.db_alter_table('c_bpartner_location','ALTER TABLE public.C_BPartner_Location ADD COLUMN ValidTo TIMESTAMP WITHOUT TIME ZONE')
;

-- 2017-05-22T14:43:23.018
-- URL zum Konzept
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,543347,0,'c_bpartner_location_valid_id',TO_TIMESTAMP('2017-05-22 14:43:22','YYYY-MM-DD HH24:MI:SS'),100,'de.metas.elasticsearch','Y','c_bpartner_location_valid_id','c_bpartner_location_valid_id',TO_TIMESTAMP('2017-05-22 14:43:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 2017-05-22T14:43:23.025
-- URL zum Konzept
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=543347 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 2017-05-22T14:43:41.602
-- URL zum Konzept
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AllowZoomTo,ColumnName,Created,CreatedBy,DDL_NoForeignKey,EntityType,FieldLength,IsActive,IsAdvancedText,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsCalculated,IsDimension,IsDLMPartitionBoundary,IsEncrypted,IsGenericZoomKeyColumn,IsGenericZoomOrigin,IsIdentifier,IsKey,IsLazyLoading,IsMandatory,IsParent,IsSelectionColumn,IsStaleable,IsSyncDatabase,IsTranslated,IsUpdateable,IsUseDocSequence,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,556817,543347,0,19,293,'N','c_bpartner_location_valid_id',TO_TIMESTAMP('2017-05-22 14:43:41','YYYY-MM-DD HH24:MI:SS'),100,'N','de.metas.elasticsearch',10,'Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','c_bpartner_location_valid_id',0,TO_TIMESTAMP('2017-05-22 14:43:41','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 2017-05-22T14:43:41.604
-- URL zum Konzept
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=556817 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 2017-05-22T14:44:54.501
-- URL zum Konzept
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,540357,TO_TIMESTAMP('2017-05-22 14:44:54','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','C_BPartner_Location_Next','S',TO_TIMESTAMP('2017-05-22 14:44:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 2017-05-22T14:45:23.502
-- URL zum Konzept
UPDATE AD_Val_Rule SET Code='select name from c_bpartner_location where c_bpartner_id = @C_BPartner_ID@',Updated=TO_TIMESTAMP('2017-05-22 14:45:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=540357
;

-- 2017-05-22T14:45:56.367
-- URL zum Konzept
UPDATE AD_Column SET AD_Reference_ID=30, AD_Val_Rule_ID=540357,Updated=TO_TIMESTAMP('2017-05-22 14:45:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=556817
;

-- 2017-05-22T14:46:55.801
-- URL zum Konzept
UPDATE AD_Column SET Name='C_BPartner_Location_Next',Updated=TO_TIMESTAMP('2017-05-22 14:46:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=556817
;

-- 2017-05-22T14:46:55.805
-- URL zum Konzept
UPDATE AD_Column_Trl SET IsTranslated='N' WHERE AD_Column_ID=556817
;

-- 2017-05-22T14:46:55.812
-- URL zum Konzept
UPDATE AD_Field SET Name='C_BPartner_Location_Next', Description=NULL, Help=NULL WHERE AD_Column_ID=556817 AND IsCentrallyMaintained='Y'
;

-- 2017-05-22T14:47:21.082
-- URL zum Konzept
UPDATE AD_Element SET ColumnName='C_BPartner_Location_Next_ID', Name='C_BPartner_Location_Next_ID', PrintName='C_BPartner_Location_Next_ID',Updated=TO_TIMESTAMP('2017-05-22 14:47:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=543347
;

-- 2017-05-22T14:47:21.085
-- URL zum Konzept
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=543347
;

-- 2017-05-22T14:47:21.087
-- URL zum Konzept
UPDATE AD_Column SET ColumnName='C_BPartner_Location_Next_ID', Name='C_BPartner_Location_Next_ID', Description=NULL, Help=NULL WHERE AD_Element_ID=543347
;

-- 2017-05-22T14:47:21.107
-- URL zum Konzept
UPDATE AD_Process_Para SET ColumnName='C_BPartner_Location_Next_ID', Name='C_BPartner_Location_Next_ID', Description=NULL, Help=NULL, AD_Element_ID=543347 WHERE UPPER(ColumnName)='C_BPARTNER_LOCATION_NEXT_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 2017-05-22T14:47:21.110
-- URL zum Konzept
UPDATE AD_Process_Para SET ColumnName='C_BPartner_Location_Next_ID', Name='C_BPartner_Location_Next_ID', Description=NULL, Help=NULL WHERE AD_Element_ID=543347 AND IsCentrallyMaintained='Y'
;

-- 2017-05-22T14:47:21.112
-- URL zum Konzept
UPDATE AD_Field SET Name='C_BPartner_Location_Next_ID', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=543347) AND IsCentrallyMaintained='Y'
;

-- 2017-05-22T14:47:21.136
-- URL zum Konzept
UPDATE AD_PrintFormatItem pi SET PrintName='C_BPartner_Location_Next_ID', Name='C_BPartner_Location_Next_ID' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=543347)
;

-- 2017-05-22T14:48:00.811
-- URL zum Konzept
UPDATE AD_Column SET AD_Val_Rule_ID=NULL,Updated=TO_TIMESTAMP('2017-05-22 14:48:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=556817
;

-- 2017-05-22T14:48:44.218
-- URL zum Konzept
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,540723,TO_TIMESTAMP('2017-05-22 14:48:44','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','N','C_BPartner_Location_Next',TO_TIMESTAMP('2017-05-22 14:48:44','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- 2017-05-22T14:48:44.226
-- URL zum Konzept
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=540723 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 2017-05-22T14:49:12.423
-- URL zum Konzept
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Display,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,Updated,UpdatedBy) VALUES (0,2960,3434,0,540723,293,TO_TIMESTAMP('2017-05-22 14:49:12','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','N',TO_TIMESTAMP('2017-05-22 14:49:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 2017-05-22T14:49:21.674
-- URL zum Konzept
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=159,Updated=TO_TIMESTAMP('2017-05-22 14:49:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=556817
;

-- 2017-05-22T14:49:30.464
-- URL zum Konzept
/* DDL */ SELECT public.db_alter_table('c_bpartner_location','ALTER TABLE public.C_BPartner_Location ADD COLUMN C_BPartner_Location_Next_ID NUMERIC(10)')
;

-- 2017-05-22T14:49:31.388
-- URL zum Konzept
ALTER TABLE C_BPartner_Location ADD CONSTRAINT CBPartnerLocationNext_CBPartne FOREIGN KEY (C_BPartner_Location_Next_ID) REFERENCES public.C_BPartner_Location DEFERRABLE INITIALLY DEFERRED
;

-- 2017-05-22T14:51:24.588
-- URL zum Konzept
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,ColumnDisplayLength,Created,CreatedBy,DisplayLength,EntityType,IncludedTabHeight,IsActive,IsCentrallyMaintained,IsDisplayed,IsDisplayedGrid,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SeqNoGrid,SortNo,SpanX,SpanY,Updated,UpdatedBy) VALUES (0,556817,558501,0,222,0,TO_TIMESTAMP('2017-05-22 14:51:24','YYYY-MM-DD HH24:MI:SS'),100,0,'U',0,'Y','Y','Y','Y','N','N','N','N','N','C_BPartner_Location_Next_ID',170,150,0,1,1,TO_TIMESTAMP('2017-05-22 14:51:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 2017-05-22T14:51:24.591
-- URL zum Konzept
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=558501 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 2017-05-22T14:51:57.650
-- URL zum Konzept
INSERT INTO AD_UI_Element (AD_Client_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,AD_UI_ElementGroup_ID,AD_UI_Element_ID,Created,CreatedBy,IsActive,IsAdvancedField,IsDisplayed,IsDisplayedGrid,IsDisplayed_SideList,Name,SeqNo,SeqNoGrid,SeqNo_SideList,Updated,UpdatedBy) VALUES (0,558501,0,222,1000034,544494,TO_TIMESTAMP('2017-05-22 14:51:57','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','Y','N','N','C_BPartner_Location_Next_ID_C_BPartner_Location_Next_ID_C_BPartner_Location_Next_ID',10,0,0,TO_TIMESTAMP('2017-05-22 14:51:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 2017-05-22T14:52:26.983
-- URL zum Konzept
UPDATE AD_UI_Element SET IsDisplayedGrid='Y', SeqNoGrid=100,Updated=TO_TIMESTAMP('2017-05-22 14:52:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_UI_Element_ID=544494
;

-- 2017-05-22T14:52:59.739
-- URL zum Konzept
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,ColumnDisplayLength,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IncludedTabHeight,IsActive,IsCentrallyMaintained,IsDisplayed,IsDisplayedGrid,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SeqNoGrid,SortNo,SpanX,SpanY,Updated,UpdatedBy) VALUES (0,556816,558502,0,222,0,TO_TIMESTAMP('2017-05-22 14:52:59','YYYY-MM-DD HH24:MI:SS'),100,'Gültig bis inklusiv (letzter Tag)',0,'U','"Gültig bis" bezeichnet den letzten Tag eines Gültigkeitzeitraumes.',0,'Y','Y','Y','Y','N','N','N','N','N','Gültig bis',180,160,0,1,1,TO_TIMESTAMP('2017-05-22 14:52:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 2017-05-22T14:52:59.741
-- URL zum Konzept
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=558502 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 2017-05-22T14:53:28.556
-- URL zum Konzept
INSERT INTO AD_UI_Element (AD_Client_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,AD_UI_ElementGroup_ID,AD_UI_Element_ID,Created,CreatedBy,IsActive,IsAdvancedField,IsDisplayed,IsDisplayedGrid,IsDisplayed_SideList,Name,SeqNo,SeqNoGrid,SeqNo_SideList,Updated,UpdatedBy) VALUES (0,558502,0,222,1000034,544495,TO_TIMESTAMP('2017-05-22 14:53:28','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','Y','N','N','Gültig bis_ValidTo_Gültig bis',5,0,0,TO_TIMESTAMP('2017-05-22 14:53:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 2017-05-22T14:53:33.428
-- URL zum Konzept
UPDATE AD_UI_Element SET IsDisplayedGrid='Y', SeqNoGrid=110,Updated=TO_TIMESTAMP('2017-05-22 14:53:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_UI_Element_ID=544495
;

-- 2017-05-22T14:54:12.960
-- URL zum Konzept
UPDATE AD_Field SET Name='Nächste Adresse',Updated=TO_TIMESTAMP('2017-05-22 14:54:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=558501
;

-- 2017-05-22T14:54:12.963
-- URL zum Konzept
UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=558501
;

-- 2017-05-22T14:54:50.695
-- URL zum Konzept
UPDATE AD_Ref_Table SET WhereClause='c_bpartner_id = @C_BPartner_ID@',Updated=TO_TIMESTAMP('2017-05-22 14:54:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=540723
;

-- 2017-05-22T14:54:52.217
-- URL zum Konzept
UPDATE AD_Column SET AD_Reference_Value_ID=540723,Updated=TO_TIMESTAMP('2017-05-22 14:54:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=556817
;

