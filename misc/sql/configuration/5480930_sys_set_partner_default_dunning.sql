--set default dunning in partner table to dunning ID 54004
UPDATE AD_Column SET DefaultValue='540004',Updated=TO_TIMESTAMP('2017-12-19 15:53:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3085
;

-- 2017-12-19T15:54:31.038
-- URL zum Konzept
INSERT INTO t_alter_column values('c_bpartner','C_Dunning_ID','NUMERIC(10)',null,'540004')
;

