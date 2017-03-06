-- 04.03.2017 20:42
-- URL zum Konzept
UPDATE AD_Field SET DefaultValue='2000837',Updated=TO_TIMESTAMP('2017-03-04 20:42:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=545322
;

-- 06.03.2017 16:26
-- URL zum Konzept
UPDATE AD_Column SET DefaultValue='I',Updated=TO_TIMESTAMP('2017-03-06 16:26:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=545847
;

-- 06.03.2017 16:26
-- URL zum Konzept
INSERT INTO t_alter_column values('c_invoice_candidate','InvoiceRule_Override','CHAR(1)',null,'I')
;

