update ad_sysconfig 
set value ='Y' where name = 'de.metas.payment.esr.Enabled';
update C_ReferenceNo_Type set isactive = 'Y' where name in ('InvoiceReference','ESRReferenceNumber');
update c_referenceno_type_table set isactive = 'Y' where c_referenceno_type_id in (select c_referenceno_type_id from c_referenceno_type where isactive = 'Y');
