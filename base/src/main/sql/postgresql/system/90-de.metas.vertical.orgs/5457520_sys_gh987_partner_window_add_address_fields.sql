-- 04.03.2017 10:10
-- URL zum Konzept
--INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AllowZoomTo,ColumnName,ColumnSQL,Created,CreatedBy,DDL_NoForeignKey,Description,EntityType,FieldLength,Help,IsActive,IsAdvancedText,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsCalculated,IsDimension,IsDLMPartitionBoundary,IsEncrypted,IsGenericZoomKeyColumn,IsGenericZoomOrigin,IsIdentifier,IsKey,IsLazyLoading,IsMandatory,IsParent,IsSelectionColumn,IsStaleable,IsSyncDatabase,IsTranslated,IsUpdateable,IsUseDocSequence,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,556329,225,0,10,291,'N','City','(select city from c_bpartner_location bpl
--join c_location l on bpl.c_location_id = l.c_location_id 
--where isbilltodefault = ''Y'' and bpl.c_bpartner_id = C_BPartner.C_BPartner_ID )',TO_TIMESTAMP('2017-03-04 10:10:52','YYYY-MM-DD HH24:MI:SS'),100,'N','Name des Ortes','D',30,'Bezeichnet einen einzelnen Ort in diesem Land oder dieser Region.','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Ort',0,TO_TIMESTAMP('2017-03-04 10:10:52','YYYY-MM-DD HH24:MI:SS'),100,0)
--;

-- 04.03.2017 10:10
-- URL zum Konzept
--INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=556329 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
--;

-- 04.03.2017 10:11
-- URL zum Konzept
--INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,ColumnDisplayLength,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IncludedTabHeight,IsActive,IsCentrallyMaintained,IsDisplayed,IsDisplayedGrid,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SeqNoGrid,SortNo,SpanX,SpanY,Updated,UpdatedBy) VALUES (0,556329,557871,0,220,0,TO_TIMESTAMP('2017-03-04 10:11:21','YYYY-MM-DD HH24:MI:SS'),100,'Name des Ortes',0,'U','Bezeichnet einen einzelnen Ort in diesem Land oder dieser Region.',0,'Y','Y','Y','Y','N','N','N','N','N','Ort',280,310,0,1,1,TO_TIMESTAMP('2017-03-04 10:11:21','YYYY-MM-DD HH24:MI:SS'),100)
--;

-- 04.03.2017 10:11
-- URL zum Konzept
--INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=557871 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
--;

-- 04.03.2017 10:20
-- URL zum Konzept
--INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AllowZoomTo,ColumnName,ColumnSQL,Created,CreatedBy,DDL_NoForeignKey,Description,EntityType,FieldLength,Help,IsActive,IsAdvancedText,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsCalculated,IsDimension,IsDLMPartitionBoundary,IsEncrypted,IsGenericZoomKeyColumn,IsGenericZoomOrigin,IsIdentifier,IsKey,IsLazyLoading,IsMandatory,IsParent,IsSelectionColumn,IsStaleable,IsSyncDatabase,IsTranslated,IsUpdateable,IsUseDocSequence,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,556330,512,0,10,291,'N','Postal','(select postal from c_bpartner_location bpl
--join c_location l on bpl.c_location_id = l.c_location_id 
--where isbilltodefault = ''Y'' and bpl.c_bpartner_id = C_BPartner.C_BPartner_ID )',TO_TIMESTAMP('2017-03-04 10:20:23','YYYY-MM-DD HH24:MI:SS'),100,'N','Postleitzahl','D',30,'"PLZ" bezeichnet die Postleitzahl für diese Adresse oder dieses Postfach.','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','PLZ',0,TO_TIMESTAMP('2017-03-04 10:20:23','YYYY-MM-DD HH24:MI:SS'),100,0)
--;

-- 04.03.2017 10:20
-- URL zum Konzept
--INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=556330 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
--;

-- 04.03.2017 10:20
-- URL zum Konzept
UPDATE AD_Column SET AD_Element_ID=156, ColumnName='Address1', ColumnSQL='(select address1 from c_bpartner_location bpl
join c_location l on bpl.c_location_id = l.c_location_id 
where isbilltodefault = ''Y'' and bpl.c_bpartner_id = C_BPartner.C_BPartner_ID )', Description='Adresszeile 1 für diesen Standort', Help='"Adresszeile 1" gibt die Anschrift für diesen Standort an.', Name='Straße und Nr.',Updated=TO_TIMESTAMP('2017-03-04 10:20:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=556330
;

-- 04.03.2017 10:20
-- URL zum Konzept
UPDATE AD_Column_Trl SET IsTranslated='N' WHERE AD_Column_ID=556330
;

-- 04.03.2017 10:20
-- URL zum Konzept
UPDATE AD_Field SET Name='Straße und Nr.', Description='Adresszeile 1 für diesen Standort', Help='"Adresszeile 1" gibt die Anschrift für diesen Standort an.' WHERE AD_Column_ID=556330 AND IsCentrallyMaintained='Y'
;

-- 04.03.2017 10:23
-- URL zum Konzept
--INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,ColumnDisplayLength,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IncludedTabHeight,IsActive,IsCentrallyMaintained,IsDisplayed,IsDisplayedGrid,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SeqNoGrid,SortNo,SpanX,SpanY,Updated,UpdatedBy) VALUES (0,556330,557872,0,220,0,TO_TIMESTAMP('2017-03-04 10:23:30','YYYY-MM-DD HH24:MI:SS'),100,'Adresszeile 1 für diesen Standort',0,'U','"Adresszeile 1" gibt die Anschrift für diesen Standort an.',0,'Y','Y','Y','Y','N','N','N','N','N','Straße und Nr.',290,320,0,1,1,TO_TIMESTAMP('2017-03-04 10:23:30','YYYY-MM-DD HH24:MI:SS'),100)
--;

-- 04.03.2017 10:23
-- URL zum Konzept
--INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=557872 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
--;

-- 04.03.2017 10:23
-- URL zum Konzept
--INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AllowZoomTo,ColumnName,ColumnSQL,Created,CreatedBy,DDL_NoForeignKey,Description,EntityType,FieldLength,Help,IsActive,IsAdvancedText,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsCalculated,IsDimension,IsDLMPartitionBoundary,IsEncrypted,IsGenericZoomKeyColumn,IsGenericZoomOrigin,IsIdentifier,IsKey,IsLazyLoading,IsMandatory,IsParent,IsSelectionColumn,IsStaleable,IsSyncDatabase,IsTranslated,IsUpdateable,IsUseDocSequence,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,556331,512,0,10,291,'N','Postal','(select postal from c_bpartner_location bpl
--join c_location l on bpl.c_location_id = l.c_location_id 
--where isbilltodefault = ''Y'' and bpl.c_bpartner_id = C_BPartner.C_BPartner_ID )',TO_TIMESTAMP('2017-03-04 10:23:50','YYYY-MM-DD HH24:MI:SS'),100,'N','Postleitzahl','D',30,'"PLZ" bezeichnet die Postleitzahl für diese Adresse oder dieses Postfach.','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','PLZ',0,TO_TIMESTAMP('2017-03-04 10:23:50','YYYY-MM-DD HH24:MI:SS'),100,0)
--;

-- 04.03.2017 10:23
-- URL zum Konzept
--INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=556331 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
--;

-- 04.03.2017 10:24
-- URL zum Konzept
--INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,ColumnDisplayLength,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IncludedTabHeight,IsActive,IsCentrallyMaintained,IsDisplayed,IsDisplayedGrid,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SeqNoGrid,SortNo,SpanX,SpanY,Updated,UpdatedBy) VALUES (0,556331,557873,0,220,0,TO_TIMESTAMP('2017-03-04 10:24:07','YYYY-MM-DD HH24:MI:SS'),100,'Postleitzahl',0,'U','"PLZ" bezeichnet die Postleitzahl für diese Adresse oder dieses Postfach.',0,'Y','Y','Y','Y','N','N','N','N','N','PLZ',300,330,0,1,1,TO_TIMESTAMP('2017-03-04 10:24:07','YYYY-MM-DD HH24:MI:SS'),100)
--;

-- 04.03.2017 10:24
-- URL zum Konzept
--INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=557873 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
--;

-- 04.03.2017 10:24
-- URL zum Konzept
UPDATE AD_Field SET EntityType='de.metas.eoss.verband',Updated=TO_TIMESTAMP('2017-03-04 10:24:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=557873
;

-- 04.03.2017 10:24
-- URL zum Konzept
UPDATE AD_Field SET EntityType='de.metas.eoss.verband',Updated=TO_TIMESTAMP('2017-03-04 10:24:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=557872
;

-- 04.03.2017 10:24
-- URL zum Konzept
UPDATE AD_Field SET EntityType='de.metas.eoss.verband',Updated=TO_TIMESTAMP('2017-03-04 10:24:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=557871
;

-- 04.03.2017 10:24
-- URL zum Konzept
UPDATE AD_Column SET EntityType='de.metas.eoss.verband',Updated=TO_TIMESTAMP('2017-03-04 10:24:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=556331
;

-- 04.03.2017 10:25
-- URL zum Konzept
UPDATE AD_Column SET EntityType='de.metas.eoss.verband',Updated=TO_TIMESTAMP('2017-03-04 10:25:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=556330
;

-- 04.03.2017 10:25
-- URL zum Konzept
UPDATE AD_Column SET EntityType='de.metas.eoss.verband',Updated=TO_TIMESTAMP('2017-03-04 10:25:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=556329
;

-- 04.03.2017 10:29
-- URL zum Konzept
--INSERT INTO AD_UI_Element (AD_Client_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,AD_UI_ElementGroup_ID,AD_UI_Element_ID,Created,CreatedBy,IsActive,IsAdvancedField,IsDisplayed,IsDisplayedGrid,IsDisplayed_SideList,Name,SeqNo,SeqNoGrid,SeqNo_SideList,Updated,UpdatedBy) VALUES (0,557871,0,220,1000010,541954,TO_TIMESTAMP('2017-03-04 10:29:50','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','N','N','N','Ort',70,0,0,TO_TIMESTAMP('2017-03-04 10:29:50','YYYY-MM-DD HH24:MI:SS'),100)
--;

-- 04.03.2017 10:30
-- URL zum Konzept
--INSERT INTO AD_UI_Element (AD_Client_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,AD_UI_ElementGroup_ID,AD_UI_Element_ID,Created,CreatedBy,IsActive,IsAdvancedField,IsDisplayed,IsDisplayedGrid,IsDisplayed_SideList,Name,SeqNo,SeqNoGrid,SeqNo_SideList,Updated,UpdatedBy) VALUES (0,557872,0,220,1000010,541955,TO_TIMESTAMP('2017-03-04 10:30:38','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','N','N','N','Strasse',80,0,0,TO_TIMESTAMP('2017-03-04 10:30:38','YYYY-MM-DD HH24:MI:SS'),100)
--;

-- 04.03.2017 10:30
-- URL zum Konzept
--INSERT INTO AD_UI_Element (AD_Client_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,AD_UI_ElementGroup_ID,AD_UI_Element_ID,Created,CreatedBy,IsActive,IsAdvancedField,IsDisplayed,IsDisplayedGrid,IsDisplayed_SideList,Name,SeqNo,SeqNoGrid,SeqNo_SideList,Updated,UpdatedBy) VALUES (0,557873,0,220,1000010,541956,TO_TIMESTAMP('2017-03-04 10:30:56','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','N','N','N','PLZ',90,0,0,TO_TIMESTAMP('2017-03-04 10:30:56','YYYY-MM-DD HH24:MI:SS'),100)
--;

-- 04.03.2017 10:31
-- URL zum Konzept
UPDATE AD_UI_Element SET IsDisplayedGrid='Y', SeqNoGrid=40,Updated=TO_TIMESTAMP('2017-03-04 10:31:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_UI_Element_ID=541955
;

-- 04.03.2017 10:31
-- URL zum Konzept
UPDATE AD_UI_Element SET IsDisplayedGrid='Y', SeqNoGrid=50,Updated=TO_TIMESTAMP('2017-03-04 10:31:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_UI_Element_ID=541956
;

-- 04.03.2017 10:31
-- URL zum Konzept
UPDATE AD_UI_Element SET IsDisplayedGrid='Y', SeqNoGrid=60,Updated=TO_TIMESTAMP('2017-03-04 10:31:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_UI_Element_ID=541954
;

-- 04.03.2017 10:31
-- URL zum Konzept
UPDATE AD_UI_Element SET IsDisplayedGrid='Y', SeqNoGrid=70,Updated=TO_TIMESTAMP('2017-03-04 10:31:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_UI_Element_ID=1000076
;

-- 04.03.2017 10:31
-- URL zum Konzept
UPDATE AD_UI_Element SET IsDisplayedGrid='Y', SeqNoGrid=80,Updated=TO_TIMESTAMP('2017-03-04 10:31:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_UI_Element_ID=1000222
;

-- 04.03.2017 10:31
-- URL zum Konzept
UPDATE AD_UI_Element SET IsDisplayedGrid='Y', SeqNoGrid=90,Updated=TO_TIMESTAMP('2017-03-04 10:31:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_UI_Element_ID=1000374
;

-- 04.03.2017 10:35
-- URL zum Konzept
UPDATE AD_Field SET Name='Anrede',Updated=TO_TIMESTAMP('2017-03-04 10:35:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=557839
;

-- 04.03.2017 10:35
-- URL zum Konzept
UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=557839
;
