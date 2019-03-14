-- 2019-03-14T18:04:28.190
-- description fields
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,576226,0,TO_TIMESTAMP('2019-03-14 18:04:28','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','Projektzeiten','Projektzeiten',TO_TIMESTAMP('2019-03-14 18:04:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 2019-03-14T18:04:28.191
-- description fields
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, CommitWarning,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName,WEBUI_NameBrowse,WEBUI_NameNew,WEBUI_NameNewBreadcrumb, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language, t.AD_Element_ID, t.CommitWarning,t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName,t.WEBUI_NameBrowse,t.WEBUI_NameNew,t.WEBUI_NameNewBreadcrumb, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y'AND (l.IsSystemLanguage='Y' OR l.IsBaseLanguage='Y') AND t.AD_Element_ID=576226 AND NOT EXISTS (SELECT 1 FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 2019-03-14T18:04:43.689
-- description fields
UPDATE AD_Tab SET AD_Element_ID=576226, Name='Projektzeiten',Updated=TO_TIMESTAMP('2019-03-14 18:04:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=541671
;

-- 2019-03-14T18:04:43.722
-- description fields
INSERT INTO AD_Element_Link (AD_Client_ID,AD_Element_ID,AD_Element_Link_ID,AD_Org_ID,AD_Tab_ID,AD_Window_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,576226,627394,0,541671,540428,TO_TIMESTAMP('2019-03-14 18:04:43','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2019-03-14 18:04:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 2019-03-14T18:04:43.725
-- description fields
/* DDL */  select update_tab_translation_from_ad_element(576226) 
;

