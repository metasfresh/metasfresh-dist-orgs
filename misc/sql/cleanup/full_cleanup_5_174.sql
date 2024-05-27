--Reset doctypeNo
UPDATE ad_sequence
SET currentnext = startno
WHERE ad_sequence_id IN (
    SELECT DISTINCT docnosequence_id
    FROM c_doctype
    WHERE docnosequence_id IS NOT NULL
)
;

-- cleanup backups
DO $$ DECLARE
    r RECORD;
BEGIN
    FOR r IN (SELECT tablename, schemaname FROM pg_tables WHERE schemaname = 'backup') LOOP
            EXECUTE 'DROP TABLE IF EXISTS ' || quote_ident(r.schemaname) || '.' || quote_ident(r.tablename);
        END LOOP;
END $$;

-- cleanup migration_data
DO $$ DECLARE
    r RECORD;
BEGIN
    FOR r IN (SELECT tablename, schemaname FROM pg_tables WHERE schemaname = 'migration_data') LOOP
            EXECUTE 'DROP TABLE IF EXISTS ' || quote_ident(r.schemaname) || '.' || quote_ident(r.tablename);
        END LOOP;
END $$;



-- cleanup non public schemas with tables
DO $$ DECLARE
    r RECORD;
BEGIN
    FOR r IN (SELECT tablename, schemaname FROM pg_tables WHERE schemaname = 'de_metas_endcustomer_fresh_reports') LOOP
            EXECUTE 'DELETE FROM ' || quote_ident(r.schemaname) || '.' || quote_ident(r.tablename);
        END LOOP;
END $$;

DO $$ DECLARE
    r RECORD;
BEGIN
    FOR r IN (SELECT tablename, schemaname FROM pg_tables WHERE schemaname = 'de.metas.fresh') LOOP
            EXECUTE 'DELETE FROM ' || quote_ident(r.schemaname) || '.' || quote_ident(r.tablename);
        END LOOP;
END $$;

DO $$ DECLARE
    r RECORD;
BEGIN
    FOR r IN (SELECT tablename, schemaname FROM pg_tables WHERE schemaname = 'de_metas_acct') LOOP
            EXECUTE 'DELETE FROM ' || quote_ident(r.schemaname) || '.' || quote_ident(r.tablename);
        END LOOP;
END $$;

DO $$ DECLARE
    r RECORD;
BEGIN
    FOR r IN (SELECT tablename, schemaname FROM pg_tables WHERE schemaname = 'de_metas_invoicecandidate') LOOP
            EXECUTE 'DELETE FROM ' || quote_ident(r.schemaname) || '.' || quote_ident(r.tablename);
        END LOOP;
END $$;

DO $$ DECLARE
    r RECORD;
BEGIN
    FOR r IN (SELECT tablename, schemaname FROM pg_tables WHERE schemaname = 'dlm') LOOP
            EXECUTE 'DELETE FROM ' || quote_ident(r.schemaname) || '.' || quote_ident(r.tablename);
        END LOOP;
END $$;

DO $$ DECLARE
    r RECORD;
BEGIN
    FOR r IN (SELECT tablename, schemaname FROM pg_tables WHERE schemaname = 'report') LOOP
            EXECUTE 'DELETE FROM ' || quote_ident(r.schemaname) || '.' || quote_ident(r.tablename);
        END LOOP;
END $$;

-- cleanup updates
UPDATE ad_client
SET name = 'metasfresh',
    value = 'metasfresh',
    smtphost = NULL,
    requestuser = null,
    requestuserpw = null
WHERE AD_Client_ID = 1000000;


UPDATE ad_clientinfo
SET c_bpartnercashtrx_id = 2155894 --template bpartner
WHERE AD_Client_ID = 1000000;

UPDATE public.ad_user SET ad_client_id = 0, ad_org_id = 0, isactive = 'Y', created = '2013-06-13 09:18:37.145021 +00:00', createdby = 99, updated = '2013-06-13 09:18:37.145021 +00:00', updatedby = 99, name = 'Migration', description = null, password = null, email = null, supervisor_id = null, c_bpartner_id = null, processing = null, emailuser = null, emailuserpw = null, c_bpartner_location_id = null, c_greeting_id = null, title = null, comments = null, phone = null, phone2 = null, fax = null, birthday = null, ad_orgtrx_id = null, emailverify = null, emailverifydate = null, notificationtype = 'E', isfullbpaccess = 'Y', c_job_id = null, connectionprofile = null, value = null, userpin = null, isinpayroll = 'N', isdefaultcontact = 'N', included_tab_id = null, firstname = null, lastname = null, issubjectmattercontact = 'N', issalescontact = 'N', mobilephone = null, contactlimitation = 'A', contactlimitationreason = null, passwordportal = null, deldate = null, registry = null, loginfailurecount = null, isaccountlocked = null, lockedfromip = null, loginfailuredate = null, unlockaccount = null, passwordresetcode = null, login = null, issystemuser = 'N', migration_key = null, fresh_gift = 'N', ispurchasecontact = 'N', fresh_xmas_gift = null, ad_user_incharge_id = null, ismfprocurementuser = 'N', isinvoiceemailenabled = null, issalescontact_default = 'N', ispurchasecontact_default = 'N', c_printing_queue_recipient_id = null, ad_language = null, avatar_id = null, isloginashostkey = 'N', isbilltocontact_default = 'N', isshiptocontact_default = 'N', isnewsletter = 'N', isdecider = 'N', ismanagement = 'N', ismultiplier = 'N', memo = null, procurementpassword = null, externalid = null, c_bpartner_alt_location_id = null, c_title_id = null, isauthorizedsignatory = 'N', ad_org_mapping_id = null, ismembershipcontact = 'N', seqno = null WHERE ad_user_id = 99;
UPDATE public.ad_user SET ad_client_id = 0, ad_org_id = 0, isactive = 'Y', created = '1999-11-12 19:41:43.000000 +00:00', createdby = 0, updated = '2000-01-01 23:00:00.000000 +00:00', updatedby = 0, name = 'System', description = '** Do not change **', password = null, email = null, supervisor_id = 100, c_bpartner_id = null, processing = null, emailuser = null, emailuserpw = null, c_bpartner_location_id = null, c_greeting_id = null, title = null, comments = null, phone = null, phone2 = null, fax = null, birthday = null, ad_orgtrx_id = null, emailverify = null, emailverifydate = null, notificationtype = 'X', isfullbpaccess = 'Y', c_job_id = null, connectionprofile = null, value = 'system', userpin = null, isinpayroll = 'N', isdefaultcontact = 'Y', included_tab_id = null, firstname = null, lastname = null, issubjectmattercontact = 'N', issalescontact = 'N', mobilephone = null, contactlimitation = null, contactlimitationreason = null, passwordportal = null, deldate = null, registry = null, loginfailurecount = null, isaccountlocked = null, lockedfromip = null, loginfailuredate = null, unlockaccount = null, passwordresetcode = null, login = 'System', issystemuser = 'N', migration_key = null, fresh_gift = 'N', ispurchasecontact = 'N', fresh_xmas_gift = null, ad_user_incharge_id = null, ismfprocurementuser = 'N', isinvoiceemailenabled = null, issalescontact_default = 'N', ispurchasecontact_default = 'N', c_printing_queue_recipient_id = null, ad_language = null, avatar_id = null, isloginashostkey = 'N', isbilltocontact_default = 'N', isshiptocontact_default = 'N', isnewsletter = 'N', isdecider = 'N', ismanagement = 'N', ismultiplier = 'N', memo = null, procurementpassword = null, externalid = null, c_bpartner_alt_location_id = null, c_title_id = null, isauthorizedsignatory = 'N', ad_org_mapping_id = null, ismembershipcontact = 'N', seqno = null WHERE ad_user_id = 0;
UPDATE public.ad_user SET ad_client_id = 1000000, ad_org_id = 1000000, isactive = 'Y', created = '2014-02-13 13:06:52.000000 +00:00', createdby = 100, updated = '2014-02-13 13:07:01.000000 +00:00', updatedby = 100, name = 'EDI-ORDERS Import, Automatik-Benutzer', description = null, password = null, email = null, supervisor_id = null, c_bpartner_id = 2155894, processing = 'N', emailuser = null, emailuserpw = null, c_bpartner_location_id = null, c_greeting_id = null, title = null, comments = null, phone = null, phone2 = null, fax = null, birthday = null, ad_orgtrx_id = null, emailverify = null, emailverifydate = null, notificationtype = 'E', isfullbpaccess = 'Y', c_job_id = null, connectionprofile = null, value = 'autmitik', userpin = null, isinpayroll = 'N', isdefaultcontact = 'N', included_tab_id = null, firstname = 'Automatik-Benutzer', lastname = 'EDI-ORDERS Import', issubjectmattercontact = 'N', issalescontact = 'N', mobilephone = null, contactlimitation = 'A', contactlimitationreason = null, passwordportal = null, deldate = null, registry = null, loginfailurecount = 0, isaccountlocked = 'N', lockedfromip = null, loginfailuredate = null, unlockaccount = 'N              ', passwordresetcode = null, login = null, issystemuser = 'N', migration_key = null, fresh_gift = 'N', ispurchasecontact = 'N', fresh_xmas_gift = null, ad_user_incharge_id = null, ismfprocurementuser = 'N', isinvoiceemailenabled = null, issalescontact_default = 'N', ispurchasecontact_default = 'N', c_printing_queue_recipient_id = null, ad_language = null, avatar_id = null, isloginashostkey = 'N', isbilltocontact_default = 'N', isshiptocontact_default = 'N', isnewsletter = 'N', isdecider = 'N', ismanagement = 'N', ismultiplier = 'N', memo = null, procurementpassword = null, externalid = null, c_bpartner_alt_location_id = null, c_title_id = null, isauthorizedsignatory = 'N', ad_org_mapping_id = null, ismembershipcontact = 'N', seqno = null WHERE ad_user_id = 2188002;
UPDATE public.ad_user SET ad_client_id = 1000000, ad_org_id = 1000000, isactive = 'Y', created = '2014-10-10 15:40:30.000000 +00:00', createdby = 100, updated = '2014-10-10 15:40:30.000000 +00:00', updatedby = 100, name = 'Lagerkonferenz-Vertrag, Automatik-Benutzer', description = 'Der Benutzer kann als Betreuer/Ansprechpartner bei Verträgen gemäß Lagerkonferenz hinterlegt werden.', password = null, email = null, supervisor_id = null, c_bpartner_id = 2155894, processing = 'N', emailuser = null, emailuserpw = null, c_bpartner_location_id = null, c_greeting_id = null, title = null, comments = null, phone = null, phone2 = null, fax = null, birthday = null, ad_orgtrx_id = null, emailverify = null, emailverifydate = null, notificationtype = 'E', isfullbpaccess = 'Y', c_job_id = null, connectionprofile = null, value = 'alagerko', userpin = null, isinpayroll = 'N', isdefaultcontact = 'N', included_tab_id = null, firstname = 'Automatik-Benutzer', lastname = 'Lagerkonferenz-Vertrag', issubjectmattercontact = 'N', issalescontact = 'N', mobilephone = null, contactlimitation = 'A', contactlimitationreason = null, passwordportal = null, deldate = null, registry = null, loginfailurecount = 0, isaccountlocked = 'N', lockedfromip = null, loginfailuredate = null, unlockaccount = 'N              ', passwordresetcode = null, login = null, issystemuser = 'N', migration_key = null, fresh_gift = 'N', ispurchasecontact = 'N', fresh_xmas_gift = null, ad_user_incharge_id = null, ismfprocurementuser = 'N', isinvoiceemailenabled = null, issalescontact_default = 'N', ispurchasecontact_default = 'N', c_printing_queue_recipient_id = null, ad_language = null, avatar_id = null, isloginashostkey = 'N', isbilltocontact_default = 'N', isshiptocontact_default = 'N', isnewsletter = 'N', isdecider = 'N', ismanagement = 'N', ismultiplier = 'N', memo = null, procurementpassword = null, externalid = null, c_bpartner_alt_location_id = null, c_title_id = null, isauthorizedsignatory = 'N', ad_org_mapping_id = null, ismembershipcontact = 'N', seqno = null WHERE ad_user_id = 540011;
UPDATE public.ad_user SET ad_client_id = 1000000, ad_org_id = 1000000, isactive = 'Y', created = '2014-06-22 12:15:09.000000 +00:00', createdby = 100, updated = '2014-06-22 12:15:09.000000 +00:00', updatedby = 100, name = 'Leergutvertrag, Automatik-Benutzer', description = 'Der Benutzer kann als Betreuer/Ansprechpartner bei Leergutverträgen hinterlegt werden.', password = null, email = null, supervisor_id = null, c_bpartner_id = 2155894, processing = 'N', emailuser = null, emailuserpw = null, c_bpartner_location_id = null, c_greeting_id = null, title = null, comments = null, phone = null, phone2 = null, fax = null, birthday = null, ad_orgtrx_id = null, emailverify = null, emailverifydate = null, notificationtype = 'E', isfullbpaccess = 'Y', c_job_id = null, connectionprofile = null, value = 'aleergut', userpin = null, isinpayroll = 'N', isdefaultcontact = 'N', included_tab_id = null, firstname = 'Automatik-Benutzer', lastname = 'Leergutvertrag', issubjectmattercontact = 'N', issalescontact = 'N', mobilephone = null, contactlimitation = 'A', contactlimitationreason = null, passwordportal = null, deldate = null, registry = null, loginfailurecount = 0, isaccountlocked = 'N', lockedfromip = null, loginfailuredate = null, unlockaccount = 'N              ', passwordresetcode = null, login = null, issystemuser = 'N', migration_key = null, fresh_gift = 'N', ispurchasecontact = 'N', fresh_xmas_gift = null, ad_user_incharge_id = null, ismfprocurementuser = 'N', isinvoiceemailenabled = null, issalescontact_default = 'N', ispurchasecontact_default = 'N', c_printing_queue_recipient_id = null, ad_language = null, avatar_id = null, isloginashostkey = 'N', isbilltocontact_default = 'N', isshiptocontact_default = 'N', isnewsletter = 'N', isdecider = 'N', ismanagement = 'N', ismultiplier = 'N', memo = null, procurementpassword = null, externalid = null, c_bpartner_alt_location_id = null, c_title_id = null, isauthorizedsignatory = 'N', ad_org_mapping_id = null, ismembershipcontact = 'N', seqno = null WHERE ad_user_id = 540010;
UPDATE public.ad_user SET ad_client_id = 1000000, ad_org_id = 1000000, isactive = 'Y', created = '2013-11-25 13:50:03.000000 +00:00', createdby = 100, updated = '2013-11-25 13:50:03.000000 +00:00', updatedby = 100, name = 'EDI-ORDERS-Dateiimport, Automatik-Benutzer', description = null, password = 'sha512:687f0cb61688defd0040b268699e54e405cbd1faa12ea85767542cdc8014a4886d6ad61007a9924e257d8ea10896b2a917aaa22c1382be2935a77541b850ea05:bfede484-5b1b-46e8-997f-ba7a9cbe1b89', email = null, supervisor_id = null, c_bpartner_id = null, processing = 'N', emailuser = null, emailuserpw = null, c_bpartner_location_id = null, c_greeting_id = null, title = null, comments = null, phone = null, phone2 = null, fax = null, birthday = null, ad_orgtrx_id = null, emailverify = null, emailverifydate = null, notificationtype = 'E', isfullbpaccess = 'Y', c_job_id = null, connectionprofile = null, value = 'EDI_EnteredBy_Default', userpin = null, isinpayroll = 'N', isdefaultcontact = 'N', included_tab_id = null, firstname = 'Automatik-Benutzer', lastname = 'EDI-ORDERS-Dateiimport', issubjectmattercontact = 'N', issalescontact = 'N', mobilephone = null, contactlimitation = 'A', contactlimitationreason = null, passwordportal = null, deldate = null, registry = null, loginfailurecount = 0, isaccountlocked = 'N', lockedfromip = null, loginfailuredate = null, unlockaccount = 'N              ', passwordresetcode = null, login = null, issystemuser = 'N', migration_key = null, fresh_gift = 'N', ispurchasecontact = 'N', fresh_xmas_gift = null, ad_user_incharge_id = null, ismfprocurementuser = 'N', isinvoiceemailenabled = null, issalescontact_default = 'N', ispurchasecontact_default = 'N', c_printing_queue_recipient_id = null, ad_language = null, avatar_id = null, isloginashostkey = 'N', isbilltocontact_default = 'N', isshiptocontact_default = 'N', isnewsletter = 'N', isdecider = 'N', ismanagement = 'N', ismultiplier = 'N', memo = null, procurementpassword = null, externalid = null, c_bpartner_alt_location_id = null, c_title_id = null, isauthorizedsignatory = 'N', ad_org_mapping_id = null, ismembershipcontact = 'N', seqno = null  WHERE ad_user_id = 150;
UPDATE public.ad_user SET ad_client_id = 1000000, ad_org_id = 1000000, isactive = 'Y', created = '2015-06-30 10:54:07.329909 +00:00', createdby = 100, updated = '2015-06-30 10:54:07.329909 +00:00', updatedby = 100, name = 'Excel-Dateiimport, Automatik-Benutzer', description = null, password = 'sha512:9dbbebb320557ba961f8b7baaaf0baa49829586ca5d6a5b423c185b0136ff4658c4b57e992acbcfc6980f12e60e1dba6e37f7a31b3de971aebc01de1e7c8d1bc:822a8743-0480-4f9d-a55e-cda2f1a59341', email = null, supervisor_id = null, c_bpartner_id = null, processing = 'N', emailuser = null, emailuserpw = null, c_bpartner_location_id = null, c_greeting_id = null, title = null, comments = null, phone = null, phone2 = null, fax = null, birthday = null, ad_orgtrx_id = null, emailverify = null, emailverifydate = null, notificationtype = 'E', isfullbpaccess = 'Y', c_job_id = null, connectionprofile = null, value = 'Excel_EnteredBy_Default', userpin = null, isinpayroll = 'N', isdefaultcontact = 'N', included_tab_id = null, firstname = 'Automatik-Benutzer', lastname = 'Excel-Dateiimport', issubjectmattercontact = 'N', issalescontact = 'N', mobilephone = null, contactlimitation = 'A', contactlimitationreason = null, passwordportal = null, deldate = null, registry = null, loginfailurecount = 0, isaccountlocked = 'N', lockedfromip = null, loginfailuredate = null, unlockaccount = 'N              ', passwordresetcode = null, login = null, issystemuser = 'N', migration_key = null, fresh_gift = 'N', ispurchasecontact = null, fresh_xmas_gift = null, ad_user_incharge_id = null, ismfprocurementuser = 'N', isinvoiceemailenabled = null, issalescontact_default = 'N', ispurchasecontact_default = 'N', c_printing_queue_recipient_id = null, ad_language = null, avatar_id = null, isloginashostkey = 'N', isbilltocontact_default = 'N', isshiptocontact_default = 'N', isnewsletter = 'N', isdecider = 'N', ismanagement = 'N', ismultiplier = 'N', memo = null, procurementpassword = null, externalid = null, c_bpartner_alt_location_id = null, c_title_id = null, isauthorizedsignatory = 'N', ad_org_mapping_id = null, ismembershipcontact = 'N', seqno = null  WHERE ad_user_id = 160;
UPDATE public.ad_user SET ad_client_id = 1000000, ad_org_id = 0, isactive = 'Y', created = '2019-07-19 10:29:11.000000 +00:00', createdby = 100, updated = '2019-07-19 10:29:11.000000 +00:00', updatedby = 100, name = 'Json Reports', description = 'User used for authentication for Json Reports', password = null, email = null, supervisor_id = null, c_bpartner_id = null, processing = 'N', emailuser = null, emailuserpw = null, c_bpartner_location_id = null, c_greeting_id = null, title = null, comments = '', phone = null, phone2 = null, fax = null, birthday = null, ad_orgtrx_id = null, emailverify = null, emailverifydate = null, notificationtype = 'N', isfullbpaccess = 'Y', c_job_id = null, connectionprofile = null, value = 'JsonReports', userpin = null, isinpayroll = 'N', isdefaultcontact = 'N', included_tab_id = null, firstname = null, lastname = null, issubjectmattercontact = 'N', issalescontact = 'N', mobilephone = null, contactlimitation = 'A', contactlimitationreason = null, passwordportal = null, deldate = null, registry = null, loginfailurecount = 0, isaccountlocked = 'N', lockedfromip = null, loginfailuredate = null, unlockaccount = 'N              ', passwordresetcode = null, login = 'Json Reports', issystemuser = 'N', migration_key = null, fresh_gift = 'N', ispurchasecontact = null, fresh_xmas_gift = null, ad_user_incharge_id = null, ismfprocurementuser = 'N', isinvoiceemailenabled = null, issalescontact_default = 'N', ispurchasecontact_default = 'N', c_printing_queue_recipient_id = null, ad_language = 'en_US', avatar_id = null, isloginashostkey = 'N', isbilltocontact_default = 'N', isshiptocontact_default = 'N', isnewsletter = 'N', isdecider = 'N', ismanagement = 'N', ismultiplier = 'N', memo = null, procurementpassword = null, externalid = null, c_bpartner_alt_location_id = null, c_title_id = null, isauthorizedsignatory = 'N', ad_org_mapping_id = null, ismembershipcontact = 'N', seqno = null  WHERE ad_user_id = 540057;
UPDATE public.ad_user SET ad_client_id = 0, ad_org_id = 0, isactive = 'Y', created = '2015-01-17 20:02:56.000000 +00:00', createdby = 100, updated = '2015-01-17 20:07:56.000000 +00:00', updatedby = 100, name = 'PrintingHostService', description = 'This user is used by de.metas.printing.client.PrintingHostService', password = '0qxRqY9EDJB38G8E-u6rqFWoFUmqMrR8', email = null, supervisor_id = null, c_bpartner_id = null, processing = 'N', emailuser = null, emailuserpw = null, c_bpartner_location_id = null, c_greeting_id = null, title = null, comments = null, phone = null, phone2 = null, fax = null, birthday = null, ad_orgtrx_id = null, emailverify = null, emailverifydate = null, notificationtype = 'X', isfullbpaccess = 'N', c_job_id = null, connectionprofile = null, value = 'printing', userpin = null, isinpayroll = 'N', isdefaultcontact = 'N', included_tab_id = null, firstname = null, lastname = null, issubjectmattercontact = 'N', issalescontact = 'N', mobilephone = null, contactlimitation = 'A', contactlimitationreason = null, passwordportal = null, deldate = null, registry = null, loginfailurecount = 0, isaccountlocked = 'N', lockedfromip = null, loginfailuredate = null, unlockaccount = 'N              ', passwordresetcode = null, login = 'PrintingHostService', issystemuser = 'Y', migration_key = null, fresh_gift = 'N', ispurchasecontact = 'N', fresh_xmas_gift = null, ad_user_incharge_id = null, ismfprocurementuser = 'N', isinvoiceemailenabled = null, issalescontact_default = 'N', ispurchasecontact_default = 'N', c_printing_queue_recipient_id = null, ad_language = null, avatar_id = null, isloginashostkey = 'N', isbilltocontact_default = 'N', isshiptocontact_default = 'N', isnewsletter = 'N', isdecider = 'N', ismanagement = 'N', ismultiplier = 'N', memo = null, procurementpassword = null, externalid = null, c_bpartner_alt_location_id = null, c_title_id = null, isauthorizedsignatory = 'N', ad_org_mapping_id = null, ismembershipcontact = 'N', seqno = null  WHERE ad_user_id = 540012;
UPDATE public.ad_user SET ad_client_id = 1000000, ad_org_id = 1000000, isactive = 'N', created = '2021-03-16 19:48:53.000000 +00:00', createdby = 100, updated = '2021-03-16 19:49:49.000000 +00:00', updatedby = 100, name = 'API-User, Shopware6', description = null, password = null, email = null, supervisor_id = null, c_bpartner_id = null, processing = 'N', emailuser = null, emailuserpw = null, c_bpartner_location_id = null, c_greeting_id = null, title = '', comments = null, phone = null, phone2 = null, fax = null, birthday = null, ad_orgtrx_id = null, emailverify = null, emailverifydate = null, notificationtype = 'N', isfullbpaccess = 'Y', c_job_id = null, connectionprofile = null, value = 'shopware', userpin = null, isinpayroll = 'N', isdefaultcontact = 'N', included_tab_id = null, firstname = 'Shopware6', lastname = 'API-User', issubjectmattercontact = 'N', issalescontact = 'N', mobilephone = null, contactlimitation = 'A', contactlimitationreason = null, passwordportal = null, deldate = null, registry = null, loginfailurecount = null, isaccountlocked = 'N', lockedfromip = null, loginfailuredate = null, unlockaccount = null, passwordresetcode = null, login = 'Shopware6', issystemuser = 'Y', migration_key = null, fresh_gift = 'N', ispurchasecontact = 'N', fresh_xmas_gift = null, ad_user_incharge_id = null, ismfprocurementuser = 'N', isinvoiceemailenabled = null, issalescontact_default = 'N', ispurchasecontact_default = 'N', c_printing_queue_recipient_id = null, ad_language = 'de_DE', avatar_id = null, isloginashostkey = 'N', isbilltocontact_default = 'N', isshiptocontact_default = 'N', isnewsletter = 'N', isdecider = 'N', ismanagement = 'N', ismultiplier = 'N', memo = null, procurementpassword = null, externalid = null, c_bpartner_alt_location_id = null, c_title_id = null, isauthorizedsignatory = 'N', ad_org_mapping_id = null, ismembershipcontact = 'N', seqno = null  WHERE ad_user_id = 540091;
UPDATE public.ad_user SET ad_client_id = 1000000, ad_org_id = 1000000, isactive = 'N', created = '2021-03-16 19:58:07.000000 +00:00', createdby = 100, updated = '2021-03-16 20:02:25.000000 +00:00', updatedby = 100, name = 'API-User, Alberta', description = null, password = null, email = null, supervisor_id = null, c_bpartner_id = null, processing = 'N', emailuser = null, emailuserpw = null, c_bpartner_location_id = null, c_greeting_id = null, title = '', comments = null, phone = null, phone2 = null, fax = null, birthday = null, ad_orgtrx_id = null, emailverify = null, emailverifydate = null, notificationtype = 'N', isfullbpaccess = 'Y', c_job_id = null, connectionprofile = null, value = 'alberta', userpin = null, isinpayroll = 'N', isdefaultcontact = 'N', included_tab_id = null, firstname = 'Alberta', lastname = 'API-User', issubjectmattercontact = 'N', issalescontact = 'N', mobilephone = null, contactlimitation = 'A', contactlimitationreason = null, passwordportal = null, deldate = null, registry = null, loginfailurecount = null, isaccountlocked = 'N', lockedfromip = null, loginfailuredate = null, unlockaccount = null, passwordresetcode = null, login = 'alberta', issystemuser = 'Y', migration_key = null, fresh_gift = 'N', ispurchasecontact = 'N', fresh_xmas_gift = null, ad_user_incharge_id = null, ismfprocurementuser = 'N', isinvoiceemailenabled = null, issalescontact_default = 'N', ispurchasecontact_default = 'N', c_printing_queue_recipient_id = null, ad_language = 'de_DE', avatar_id = null, isloginashostkey = 'N', isbilltocontact_default = 'N', isshiptocontact_default = 'N', isnewsletter = 'N', isdecider = 'N', ismanagement = 'N', ismultiplier = 'N', memo = null, procurementpassword = null, externalid = null, c_bpartner_alt_location_id = null, c_title_id = null, isauthorizedsignatory = 'N', ad_org_mapping_id = null, ismembershipcontact = 'N', seqno = null  WHERE ad_user_id = 540092;
UPDATE public.ad_user SET ad_client_id = 0, ad_org_id = 0, isactive = 'Y', created = '1999-12-09 17:15:00.000000 +00:00', createdby = 0, updated = '2023-12-08 16:49:29.712000 +00:00', updatedby = 100, name = 'metasfresh', description = 'Super User with Access to all levels', email = 'metasfresh@metasfresh.com', supervisor_id = null, c_bpartner_id = null, processing = null, emailuser = 'dragosp96', emailuserpw = 'Asdfqwzxc1', c_bpartner_location_id = null, c_greeting_id = null, title = null, comments = null, phone = null, phone2 = null, fax = null, birthday = null, ad_orgtrx_id = null, emailverify = null, emailverifydate = null, notificationtype = 'N', isfullbpaccess = 'Y', c_job_id = null, connectionprofile = null, value = 'metasfresh', userpin = null, isinpayroll = 'N', isdefaultcontact = 'Y', included_tab_id = null, firstname = null, lastname = null, issubjectmattercontact = 'N', issalescontact = 'N', mobilephone = null, contactlimitation = null, contactlimitationreason = null, passwordportal = null, deldate = null, registry = null, loginfailurecount = 0, isaccountlocked = 'N', lockedfromip = null, loginfailuredate = '2023-02-22 06:55:36.513000 +00:00', unlockaccount = null, passwordresetcode = null, login = 'metasfresh', issystemuser = 'Y', migration_key = null, fresh_gift = 'N', ispurchasecontact = 'N', fresh_xmas_gift = null, ad_user_incharge_id = null, ismfprocurementuser = 'N', isinvoiceemailenabled = null, issalescontact_default = 'N', ispurchasecontact_default = 'N', c_printing_queue_recipient_id = null, ad_language = 'en_US', avatar_id = null, isloginashostkey = 'N', isbilltocontact_default = 'N', isshiptocontact_default = 'N', isnewsletter = 'N', isdecider = 'N', ismanagement = 'N', ismultiplier = 'N', memo = null, procurementpassword = null, externalid = null, c_bpartner_alt_location_id = null, c_title_id = null, isauthorizedsignatory = 'N', ad_org_mapping_id = null, ismembershipcontact = 'N', seqno = null  WHERE ad_user_id = 100;
UPDATE public.ad_user SET ad_client_id = 1000000, ad_org_id = 1000000, isactive = 'Y', created = '2011-01-27 13:06:22.952771 +00:00', createdby = 0, updated = '2020-10-23 14:32:33.000000 +00:00', updatedby = 100, name = 'Admin, Automatik-Benutzer', description = 'Admin', password = 'sha512:5153911c40015341d0519fb016d3242d180359cd2ef82ffb4aefc5b9dc4a79087d61fcb03750fced2ffc5777b5bcd1ea974b0d044cb93b7afaf5e64d5f93bd34:e897b801-e0f9-4488-989c-ecc0b10c7613', email = null, supervisor_id = null, c_bpartner_id = 2155894, processing = null, emailuser = null, emailuserpw = null, c_bpartner_location_id = null, c_greeting_id = null, title = null, comments = null, phone = null, phone2 = null, fax = null, birthday = null, ad_orgtrx_id = null, emailverify = null, emailverifydate = null, notificationtype = 'N', isfullbpaccess = 'Y', c_job_id = null, connectionprofile = null, value = 'admin', userpin = null, isinpayroll = 'N', isdefaultcontact = 'Y', included_tab_id = null, firstname = 'Automatik-Benutzer', lastname = 'Admin', issubjectmattercontact = 'N', issalescontact = 'Y', mobilephone = null, contactlimitation = null, contactlimitationreason = null, passwordportal = null, deldate = null, registry = null, loginfailurecount = 0, isaccountlocked = 'N', lockedfromip = null, loginfailuredate = null, unlockaccount = null, passwordresetcode = null, login = 'loginname', issystemuser = 'N', migration_key = null, fresh_gift = 'N', ispurchasecontact = 'Y', fresh_xmas_gift = null, ad_user_incharge_id = null, ismfprocurementuser = 'N', isinvoiceemailenabled = null, issalescontact_default = 'N', ispurchasecontact_default = 'N', c_printing_queue_recipient_id = null, ad_language = null, avatar_id = null, isloginashostkey = 'N', isbilltocontact_default = 'N', isshiptocontact_default = 'N', isnewsletter = 'N', isdecider = 'N', ismanagement = 'N', ismultiplier = 'N', memo = null, procurementpassword = null, externalid = null, c_bpartner_alt_location_id = null, c_title_id = null, isauthorizedsignatory = 'N', ad_org_mapping_id = null, ismembershipcontact = 'N', seqno = null WHERE ad_user_id = 1000000;


UPDATE public.ad_user_authtoken SET ad_client_id = 1000000, ad_org_id = 0, ad_role_id = 540078, ad_user_id = 540057, authtoken = 'b3192895e98d4531b7a0b19f8858e10e', created = '2019-07-19 07:32:54.000000 +00:00', createdby = 100, description = null, isactive = 'Y', updated = '2024-01-16 13:44:28.353000 +00:00', updatedby = 0 WHERE ad_user_authtoken_id = 540001;
UPDATE public.ad_user_authtoken SET ad_client_id = 1000000, ad_org_id = 1000000, ad_role_id = 540024, ad_user_id = 1000000, authtoken = '66767037602b49b28a46c030ade35939', created = '2020-10-23 14:29:13.000000 +00:00', createdby = 100, description = null, isactive = 'Y', updated = '2020-10-23 14:29:13.000000 +00:00', updatedby = 100 WHERE ad_user_authtoken_id = 1000000;


UPDATE public.ad_org SET ad_client_id = 1000000, isactive = 'Y', created = '2011-01-27 13:06:44.000000 +00:00', createdby = 100, updated = '2021-06-21 07:26:52.000000 +00:00', updatedby = 100, value = 'metasfresh AG', name = 'metasfresh AG', description = null, issummary = 'N', ad_replicationstrategy_id = null, iseuonestopshop = 'N' WHERE ad_org_id = 1000000;

UPDATE public.c_bpartner SET ad_client_id = 1000000, ad_org_id = 1000000, isactive = 'Y', created = '2013-11-26 09:31:16.000000 +00:00', createdby = 100, updated = '2023-01-11 07:40:43.034000 +00:00', updatedby = 100, value = 'metasfresh AG', name = 'metasfresh AG', name2 = null, description = null, issummary = 'N', c_bp_group_id = 1000000, isonetime = 'N', isprospect = 'N', isvendor = 'Y', iscustomer = 'Y', isemployee = 'N', issalesrep = 'N', referenceno = null, duns = null, url = null, ad_language = 'de_DE', taxid = null, istaxexempt = 'N', c_invoiceschedule_id = null, rating = null, salesvolume = 0, numberemployees = 0, naics = null, firstsale = null, acqusitioncost = 0, potentiallifetimevalue = 0, shareofcustomer = 0, paymentrule = 'P', c_paymentterm_id = 1000003, m_pricelist_id = null, m_discountschema_id = null, c_dunning_id = null, isdiscountprinted = 'N', so_description = null, poreference = null, paymentrulepo = 'P', po_pricelist_id = null, po_discountschema_id = null, po_paymentterm_id = 1000002, c_greeting_id = null, invoicerule = null, deliveryrule = null, freightcostrule = 'I', deliveryviarule = null, salesrep_id = 100, sendemail = 'N', bpartner_parent_id = null, invoice_printformat_id = null, shelflifeminpct = 0, ad_orgbp_id = 1000000, flatdiscount = 0, dunninggrace = null, c_taxgroup_id = null, debtorid = 0, creditorid = 0, allowconsolidateinout = 'Y', vataxid = null, c_sponsor_id = null, m_pricingsystem_id = null, po_pricingsystem_id = null, logo_id = null, ispotaxexempt = 'N', kundencockpit_includedtab1 = null, kundencockpit_includedtab2 = null, so_doctypetarget_id = null, iscompany = 'Y', so_targetdoctypereason = null, firstname = null, lastname = null, isparentsponsorreadwrite = 'Y', m_shipper_id = 1000000, kundencockpit_includedtab3 = null, createso = 'N', memo = null, companyname = 'metasfresh AG', isshippingnotificationemail = 'N', migration_key = null, fresh_statisticsgroup = null, fresh_awardpriceonls = null, fresh_retailpriceonls = null, fresh_sendpricelist = null, fresh_containersbalancetoprintonls = null, fresh_statisticscode = null, fresh_isprintesr = 'N', fresh_allowlinediscount = 'N', isplanning = 'N', fresh_certification = null, isediinvoicrecipient = 'N', edidesadvrecipientgln = null, fresh_urproduzent = 'N', fresh_produzentenabrechnung = 'N', fresh_adrregion = null, isproducerallotment = 'N', isadrcustomer = 'N', isreplicationlookupdefault = 'N', isadrvendor = 'N', fresh_adrvendorregion = null, m_warehouse_id = null, po_deliveryviarule = null, mrp_exclude = null, so_invoice_aggregation_id = null, po_invoice_aggregation_id = null, ishidepackingmaterialinshipmentprint = 'N', memo_delivery = null, memo_invoicing = null, memo_hu = null, so_invoiceline_aggregation_id = null, po_invoiceline_aggregation_id = null, customer_group_id = null, isdisableordercheckup = 'N', salesgroup = null, iscreatedefaultporeference = 'N', poreferencepattern = null, edidesadvdefaultitemcapacity = 1, isinvoiceemailenabled = null, salesrepintern_id = null, reminderdateintern = null, reminderdateextern = null, postal = null, email = null, city = null, address1 = null, name3 = null, issepasigned = 'N', pharmaproductpermlaw52 = null, ispharmaciepermission = 'N', shortdescription = null, issourcesupplycert = 'N', ispharmaagentpermission = 'N', ispharmamanufacturerpermission = 'N', ispharmavendoragentpermission = 'N', ispharmavendormanufacturerpermission = 'N', ispharmavendorwholesalepermission = 'N', ispharmawholesalepermission = 'N', isveterinarypharmacypermission = 'N', shipmentpermissionpharma = 'B', receiptpermissionpharma = 'B', shipmentpermissionchangedate = null, receiptpermissionchangedate = null, isaggregatepo = 'N', salesresponsible = null, associationmembership = null, purchasegroup = null, shipmentpermissionpharma_old = null, permissionpharmatype = null, shelflifemindays = null, weekendopeningtimes = null, region = null, vendorcategory = null, qualification = null, customernoatvendor = null, vendorresponsible = null, minimumordervalue = null, retourfax = null, pharma_phone = null, contacts = null, pharma_fax = null, statusinfo = null, ismanufacturer = 'N', gdpcertificatecustomer = null, gdpcertificatevendor = null, qmscertificatecustomer = null, qmscertificatevendor = null, selfdisclosurecustomer = null, selfdisclosurevendor = null, certificateofregistrationcustomer = null, certificateofregistrationvendor = null, contactstatusinfocustomer = null, contactstatusinfovendor = null, externalid = null, url3 = null, globalid = null, ifa_manufacturer = null, ispharmacustomernarcoticspermission = 'N', ispharmavendornarcoticspermission = 'N', btm = null, phone2 = null, url2 = null, isallowactionprice = 'N', isallowpricemutation = 'N', shipmentallocation_bestbefore_policy = null, c_bpartner_salesrep_id = null, issalespartnerrequired = 'N', salespartnercode = null, isedidesadvrecipient = 'N', ediinvoicrecipientgln = null, datehaddexcheck = null, haddexcontrolnr = null, ishaddexcheck = 'N', ad_org_mapping_id = null, po_incoterm = null, albertarole = null, excludefrompromotions = 'N', referrer = null, mktg_campaign_id = null, internalname = null WHERE c_bpartner_id = 2155894;

UPDATE public.c_bpartner_location SET ad_client_id = 1000000, ad_org_id = 1000000, isactive = 'Y', created = '2013-07-04 07:20:13.000000 +00:00', createdby = 0, updated = '2022-06-27 22:06:16.000000 +00:00', updatedby = 2188223, name = 'Bonn', isbillto = 'Y', isshipto = 'Y', ispayfrom = 'N', isremitto = 'Y', phone = null, phone2 = null, fax = null, isdn = null, c_salesregion_id = null, c_bpartner_id = 2155894, c_location_id = 2192519, address = e'Am Nossbacher Weg 2
53179 Bonn', iscommissionto = 'N', issubscriptionto = 'N', isbilltodefault = 'Y', iscommissiontodefault = 'N', isshiptodefault = 'N', issubscriptiontodefault = 'N', migration_key = null, gln = null, ishandoverlocation = 'Y', isreplicationlookupdefault = 'N', externalid = null, fax2 = null, email = null, email2 = null, visitorsaddress = 'N', bpartnername = null, setup_place_no = null, ad_org_mapping_id = null, previousid = null, previous_id = null, validfrom = null WHERE c_bpartner_location_id = 2202690;

UPDATE public.c_location SET ad_client_id = 1000000, ad_org_id = 0, isactive = 'Y', created = '2022-06-27 22:06:15.000000 +00:00', createdby = 2188223, updated = '2022-06-27 22:06:16.000000 +00:00', updatedby = 0, address1 = 'Am Nossbacher Weg 2', address2 = null, city = 'Bonn', postal = '53179', postal_add = null, c_country_id = 101, c_region_id = null, c_city_id = null, regionname = null, address3 = null, address4 = null, value = null, nonstdaddress = 'N', ispostalvalidated = 'N', pobox = null, careof = null, migration_key = null, c_postal_id = null, geocodingstatus = 'E', geocoding_issue_id = 4938522, latitude = null, longitude = null, ispoboxnum = 'N' WHERE c_location_id = 2192519;

UPDATE m_warehouse
SET c_bpartner_location_id = 2202690,
    c_location_id = 2192519
WHERE TRUE;

UPDATE public.c_bp_group SET ad_client_id = 1000000, ad_org_id = 1000000, isactive = 'Y', created = '2011-01-27 13:07:15.000000 +00:00', createdby = 100, updated = '2012-07-16 14:10:27.000000 +00:00', updatedby = 100, value = 'Standard', name = 'Standard', description = null, isdefault = 'Y', ad_printcolor_id = null, isconfidentialinfo = 'N', prioritybase = 'S', m_pricelist_id = null, po_pricelist_id = null, m_discountschema_id = null, po_discountschema_id = null, creditwatchpercent = null, pricematchtolerance = null, c_dunning_id = null, m_pricingsystem_id = null, po_pricingsystem_id = null, m_freightcost_id = null, paymentrule = null, isprinttax = 'Y', mrp_exclude = null, isprinttaxsales = 'Y', iscustomer = 'N', socreditstatus = 'X', bpnameandgreetingstrategy = 'XX' WHERE c_bp_group_id = 1000000;
UPDATE public.m_pricingsystem SET ad_client_id = 1000000, ad_org_id = 1000000, created = '2015-07-14 13:14:12.000000 +00:00', createdby = 100, description = null, isactive = 'Y', name = 'Testpreisliste Lieferanten', updated = '2015-07-14 13:14:12.000000 +00:00', updatedby = 100, value = 'Testpreise Lieferanten', issubscriptiononly = 'N', migration_key = null WHERE m_pricingsystem_id = 2000835;
UPDATE public.m_pricingsystem SET ad_client_id = 1000000, ad_org_id = 1000000, created = '2015-07-14 13:58:21.000000 +00:00', createdby = 100, description = null, isactive = 'Y', name = 'Testpreisliste Kunden', updated = '2015-07-14 15:35:43.000000 +00:00', updatedby = 100, value = 'Testpreise Kunden', issubscriptiononly = 'N', migration_key = null WHERE m_pricingsystem_id = 2000837;
UPDATE public.m_pricelist SET ad_client_id = 1000000, ad_org_id = 1000000, isactive = 'Y', created = '2015-07-14 13:14:38.000000 +00:00', createdby = 100, updated = '2015-07-15 12:31:03.000000 +00:00', updatedby = 100, name = 'Testpreisliste Lieferanten', description = null, basepricelist_id = null, istaxincluded = 'N', issopricelist = 'N', isdefault = 'N', c_currency_id = 318, enforcepricelimit = 'N', priceprecision = 2, ismandatory = 'N', ispresentforproduct = 'N', m_pricingsystem_id = 2000835, c_country_id = 107, internalname = null, isroundnetamounttocurrencyprecision = 'Y', default_taxcategory_id = null WHERE m_pricelist_id = 2008392;
UPDATE public.m_pricelist SET ad_client_id = 1000000, ad_org_id = 1000000, isactive = 'Y', created = '2015-11-09 16:36:18.000000 +00:00', createdby = 100, updated = '2015-11-09 16:36:18.000000 +00:00', updatedby = 100, name = 'Testpreise Kunden (Deutschland)', description = null, basepricelist_id = null, istaxincluded = 'N', issopricelist = 'Y', isdefault = 'N', c_currency_id = 102, enforcepricelimit = 'N', priceprecision = 2, ismandatory = 'N', ispresentforproduct = 'N', m_pricingsystem_id = 2000837, c_country_id = 101, internalname = null, isroundnetamounttocurrencyprecision = 'Y', default_taxcategory_id = null WHERE m_pricelist_id = 2008396;
UPDATE public.m_pricelist SET ad_client_id = 1000000, ad_org_id = 1000000, isactive = 'Y', created = '2015-07-14 13:58:37.000000 +00:00', createdby = 100, updated = '2021-01-22 14:00:53.000000 +00:00', updatedby = 100, name = 'Testpreise Kunden (Schweiz)', description = null, basepricelist_id = null, istaxincluded = 'N', issopricelist = 'Y', isdefault = 'N', c_currency_id = 318, enforcepricelimit = 'N', priceprecision = 2, ismandatory = 'N', ispresentforproduct = 'N', m_pricingsystem_id = 2000837, c_country_id = 107, internalname = null, isroundnetamounttocurrencyprecision = 'Y', default_taxcategory_id = null WHERE m_pricelist_id = 2008394;
UPDATE public.m_pricelist SET ad_client_id = 1000000, ad_org_id = 1000000, isactive = 'Y', created = '2015-12-11 08:42:57.000000 +00:00', createdby = 100, updated = '2022-06-27 21:53:17.000000 +00:00', updatedby = 2188223, name = 'Testpreisliste Lieferanten DE', description = null, basepricelist_id = 540005, istaxincluded = 'N', issopricelist = 'N', isdefault = 'N', c_currency_id = 102, enforcepricelimit = 'N', priceprecision = 2, ismandatory = 'N', ispresentforproduct = 'N', m_pricingsystem_id = 2000835, c_country_id = 101, internalname = null, isroundnetamounttocurrencyprecision = 'Y', default_taxcategory_id = 1000010 WHERE m_pricelist_id = 540005;
UPDATE public.m_pricelist_version SET ad_client_id = 1000000, ad_org_id = 1000000, isactive = 'Y', created = '2015-07-14 13:15:42.000000 +00:00', createdby = 100, updated = '2015-07-14 13:18:56.000000 +00:00', updatedby = 100, name = 'Testpreisliste Lieferanten 14.07.2015', description = null, m_pricelist_id = 2008392, m_discountschema_id = 1000000, validfrom = '2015-07-14 00:00:00.000000', proccreate = 'N', m_pricelist_version_base_id = null, processed = 'N' WHERE m_pricelist_version_id = 2002137;
UPDATE public.m_pricelist_version SET ad_client_id = 1000000, ad_org_id = 1000000, isactive = 'Y', created = '2015-07-14 13:58:51.000000 +00:00', createdby = 100, updated = '2015-11-09 16:36:53.000000 +00:00', updatedby = 100, name = 'Testpreise Kunden (Schweiz)', description = null, m_pricelist_id = 2008394, m_discountschema_id = 1000000, validfrom = '2015-01-01 00:00:00.000000', proccreate = 'N', m_pricelist_version_base_id = null, processed = 'N' WHERE m_pricelist_version_id = 2002139;
UPDATE public.m_pricelist_version SET ad_client_id = 1000000, ad_org_id = 1000000, isactive = 'Y', created = '2015-11-09 16:36:30.000000 +00:00', createdby = 100, updated = '2015-11-09 16:36:59.000000 +00:00', updatedby = 100, name = 'Testpreise Kunden (Deutschland)', description = null, m_pricelist_id = 2008396, m_discountschema_id = 1000000, validfrom = '2015-01-01 00:00:00.000000', proccreate = 'N', m_pricelist_version_base_id = 2002139, processed = 'N' WHERE m_pricelist_version_id = 2002141;
UPDATE public.m_pricelist_version SET ad_client_id = 1000000, ad_org_id = 1000000, isactive = 'Y', created = '2015-12-11 08:43:21.000000 +00:00', createdby = 100, updated = '2015-12-11 08:43:21.000000 +00:00', updatedby = 100, name = 'Testpreisliste Lieferanten DE', description = null, m_pricelist_id = 540005, m_discountschema_id = 1000000, validfrom = '2015-01-01 00:00:00.000000', proccreate = 'N', m_pricelist_version_base_id = 2002141, processed = 'N' WHERE m_pricelist_version_id = 540005;


UPDATE c_bp_bankaccount
SET accountno = null,
    c_bpartner_id = 2155894,
    routingno = null,
    creditcardnumber = null,
    creditcardvv = null,
    creditcardexpmm = null,
    creditcardexpyy = null,
    a_name = null,
    a_street = null,
    a_city = null,
    a_state = null,
    a_zip = null,
    a_ident_dl = null,
    a_email = null,
    a_ident_ssn = null,
    a_country = null,
    ad_user_id = null,
    esr_renderedreceiver = null,
    esr_renderedaccountno = null,
    sepa_creditoridentifier = null,
    qr_iban = null,
    name = 'UBS CHF',
    value = 'UBS CHF',
    description = null,
    iban = null
WHERE c_bp_bankaccount_id = 2000257;

UPDATE c_doctype SET ad_boilerplate_id = NULL WHERE TRUE;
UPDATE c_doctype SET r_requesttype_id = NULL WHERE TRUE;

-- public schema cleanup
TRUNCATE es_fts_index_queue, t_query_selection, ad_pinstance_log, ad_changelog, t_query_selection_pagination, api_request_audit_log, api_request_audit, api_response_audit, c_queue_workpackage_log, t_query_selection_todelete;
TRUNCATE ad_issue CASCADE;
TRUNCATE ad_eventlog_entry, ad_eventlog;
TRUNCATE ad_pinstance_log, ad_pinstance_para, ad_pinstance_selectedincludedrecords;

DELETE FROM c_doc_outbound_log_line WHERE TRUE;
DELETE FROM c_doc_outbound_log WHERE TRUE;
DELETE FROM c_printing_queue WHERE TRUE;
DELETE FROM ad_archive WHERE TRUE;

DELETE FROM t_query_selection_pagination WHERE TRUE;
DELETE FROM t_query_selection_todelete WHERE TRUE;
DELETE FROM t_webui_viewselection_todelete WHERE TRUE;
DELETE FROM t_query_selection WHERE TRUE;
TRUNCATE t_webui_viewselection;

DELETE FROM c_invoicecandidate_inoutline WHERE TRUE;
DELETE FROM c_invoice_line_alloc WHERE TRUE;
DELETE FROM c_invoice_candidate WHERE TRUE;
DELETE FROM m_material_balance_detail WHERE TRUE;
DELETE FROM m_matchpo WHERE TRUE;
DELETE FROM m_receiptschedule_alloc WHERE TRUE;
DELETE FROM m_receiptschedule WHERE TRUE;
DELETE FROM c_subscriptionprogress WHERE TRUE;
DELETE FROM m_shipmentschedule WHERE TRUE;
DELETE FROM m_shipmentschedule_qtypicked WHERE TRUE;
DELETE FROM m_inventoryline WHERE TRUE;
DELETE FROM m_inoutline WHERE TRUE;
DELETE FROM m_inout WHERE TRUE;
DELETE FROM pp_mrp WHERE TRUE;
DELETE FROM c_allocationline WHERE TRUE;
DELETE FROM c_payment_request WHERE TRUE;
TRUNCATE esr_importline,esr_importfile,esr_import;


DELETE FROM r_request WHERE TRUE;
DELETE FROM r_requestaction WHERE TRUE;
DELETE FROM r_requestprocessorlog WHERE TRUE;
DELETE FROM i_request WHERE TRUE;
DELETE FROM r_group_prospect WHERE TRUE;
DELETE FROM r_issueknown WHERE TRUE;
DELETE FROM r_requestupdate WHERE TRUE;
DELETE FROM r_resolution WHERE TRUE;


TRUNCATE c_bpartner_export, i_flatrate_term;

DO $$
    BEGIN
        SET CONSTRAINTS ALL DEFERRED;
        DELETE FROM c_payment WHERE TRUE;
        DELETE FROM c_invoice WHERE TRUE;
        DELETE FROM c_flatrate_term WHERE TRUE;
        DELETE FROM c_orderline WHERE TRUE;
        DELETE FROM c_order_compensationgroup WHERE TRUE;
        DELETE FROM c_order WHERE TRUE;
        DELETE FROM c_flatrate_data WHERE TRUE;
    END $$;

TRUNCATE c_queue_element;
DELETE FROM c_queue_workpackage WHERE TRUE;
DELETE FROM c_queue_block WHERE TRUE;
DELETE FROM c_async_batch WHERE TRUE;
DELETE FROM ad_pinstance WHERE TRUE;

TRUNCATE md_cockpit, md_cockpit_ddorder_detail, md_cockpit_documentdetail;
TRUNCATE md_candidate, md_candidate_demand_detail, md_candidate_dist_detail, md_candidate_prod_detail, md_candidate_purchase_detail, md_candidate_transaction_detail, md_candidate_stockchange_detail;

TRUNCATE fact_acct_summary;
TRUNCATE m_shipmentschedule_recompute;

TRUNCATE m_iolcandhandler_log;
TRUNCATE fact_acct_endingbalance, fact_acct, c_taxdeclarationacct, fact_acct_activitychangerequest, t_invoicegl;

TRUNCATE x_bpartner_cockpit_search_mv;

TRUNCATE ad_wf_activity, ad_wf_eventaudit, ad_note, ad_wf_activityresult;

TRUNCATE c_contact_person;

DELETE FROM c_dunningdoc_line_source WHERE TRUE;
DELETE FROM c_dunning_candidate WHERE TRUE;
DELETE FROM c_dunningdoc_line WHERE TRUE;
DELETE FROM c_dunningdoc WHERE TRUE;
DELETE FROM c_dunninglevel_trl WHERE c_dunninglevel_id >= 1000000;
DELETE FROM c_dunninglevel WHERE c_dunninglevel_id >= 1000000;
UPDATE c_bpartner SET c_dunning_id = NULL WHERE TRUE;
DELETE FROM c_dunning WHERE c_dunning_id >= 1000000;

DELETE FROM yo98_c_bpartner_attribute_regional WHERE TRUE;
DELETE FROM yo98_job_assign WHERE TRUE;
DELETE FROM yo98_orgmembership WHERE TRUE;

UPDATE M_Product SET salesrep_id = NULL WHERE TRUE;
UPDATE C_BPartner SET salesrep_id = NULL WHERE TRUE;
UPDATE C_BPartner SET salesrepintern_id = NULL WHERE TRUE;
DELETE FROM ad_wf_process WHERE TRUE;
DELETE FROM c_doc_responsible WHERE ad_user_responsible_id NOT IN (100);
DELETE FROM ad_user_authtoken WHERE ad_user_id NOT IN (0, 99, 100, 150, 160, 540010, 540010, 540011, 540012, 540057, 540091, 540092, 1000000, 2188002);
DELETE FROM ad_user_orgaccess WHERE ad_user_id NOT IN (0, 99, 100, 150, 160, 540010, 540010, 540011, 540012, 540057, 540091, 540092, 1000000, 2188002);
DELETE FROM ad_user_roles WHERE ad_user_id NOT IN (0, 99, 100, 150, 160, 540010, 540010, 540011, 540012, 540057, 540091, 540092, 1000000, 2188002);
DELETE FROM ad_usermail WHERE ad_user_id NOT IN (0, 99, 100, 150, 160, 540010, 540010, 540011, 540012, 540057, 540091, 540092, 1000000, 2188002);
DELETE FROM ad_userquery WHERE ad_user_id NOT IN (0, 99, 100, 150, 160, 540010, 540010, 540011, 540012, 540057, 540091, 540092, 1000000, 2188002);
DELETE FROM ad_preference WHERE ad_user_id NOT IN (0, 99, 100, 150, 160, 540010, 540010, 540011, 540012, 540057, 540091, 540092, 1000000, 2188002);

UPDATE ad_user SET avatar_id = NULL WHERE TRUE;
DELETE FROM ad_image WHERE AD_Image_ID >= 1000000;

-- Deleting from ad_user is very slow, I had to do it in 10k batches for it to work
DELETE FROM ad_user WHERE ad_user_id NOT IN (0, 99, 100, 150, 160, 540010, 540010, 540011, 540012, 540057, 540091, 540092, 1000000, 2188002);

DELETE FROM c_bp_relation WHERE TRUE;
-- I had to do it in 10k batches for it to work
DELETE FROM c_bpartner_location WHERE c_bpartner_location_id NOT IN (2202690);
DELETE FROM c_validcombination WHERE c_bpartner_id IS NOT NULL;
-- I had to do it in 10k batches for it to work
DELETE FROM c_location WHERE c_location_id NOT IN (2192519);

DELETE FROM c_bp_vendor_acct WHERE C_BPartner_ID NOT IN (2155894);
DELETE FROM c_bpartner_attribute WHERE C_BPartner_ID NOT IN (2155894);
DELETE FROM c_bpartner_export WHERE TRUE;
DELETE FROM c_bpartner_location WHERE C_BPartner_ID NOT IN (2155894);
DELETE FROM c_bpartner_product_stats WHERE C_BPartner_ID NOT IN (2155894);
DELETE FROM c_bpartner_stats WHERE C_BPartner_ID NOT IN (2155894);
DELETE FROM c_bp_bankaccount WHERE c_bp_bankaccount_id NOT IN (2000257);
DELETE FROM c_bp_bankaccount_acct WHERE c_bp_bankaccount_id NOT IN (2000257);
DELETE FROM c_bp_customer_acct WHERE C_BPartner_ID NOT IN (2155894);
DELETE FROM c_bp_employee_acct WHERE C_BPartner_ID NOT IN (2155894);
DELETE FROM c_customer_retention WHERE TRUE;
UPDATE c_bpartner SET bpartner_parent_id = NULL WHERE TRUE;
DELETE FROM c_bpartner WHERE C_BPartner_ID NOT IN (2155894);

-- DELETE DATA in public
-- SELECT
--     'DELETE FROM ' || relname || ' WHERE TRUE;'
-- FROM pg_class C
--          LEFT JOIN pg_namespace N ON (N.oid = C.relnamespace)
-- WHERE nspname = 'public'
--   AND relkind='r'
--   AND reltuples > 0
-- ORDER BY relname;

DO $$
    BEGIN
        SET CONSTRAINTS ALL DEFERRED;

        DELETE FROM ad_archive WHERE TRUE;
        DELETE FROM ad_attachment WHERE TRUE;
        DELETE FROM ad_attachment_multiref WHERE TRUE;
        DELETE FROM ad_attachmententry WHERE TRUE;
        DELETE FROM ad_boilerplate WHERE TRUE;
        DELETE FROM ad_boilerplate_trl WHERE TRUE;
        --DELETE FROM ad_boilerplate_var WHERE TRUE;
        DELETE FROM ad_changelog WHERE TRUE;
        --DELETE FROM ad_client WHERE TRUE; --See cleanup updates
        --DELETE FROM ad_clientinfo WHERE TRUE; --See cleanup updates
        --DELETE FROM ad_color WHERE TRUE;
        --DELETE FROM ad_column WHERE TRUE;
        --DELETE FROM ad_column_trl WHERE TRUE;
        --DELETE FROM ad_columncallout WHERE TRUE;
        DELETE FROM ad_desktop WHERE AD_Desktop_ID NOT IN (100);
        DELETE FROM ad_desktop_trl WHERE AD_Desktop_ID NOT IN (100);
        DELETE FROM ad_desktopworkbench  WHERE AD_DesktopWorkbench_ID NOT IN (100);
        --DELETE FROM ad_document_action_access WHERE TRUE;
        --DELETE FROM ad_element WHERE TRUE;
        --DELETE FROM ad_element_link WHERE TRUE;
        --DELETE FROM ad_element_trl WHERE TRUE;
        --DELETE FROM ad_entitytype WHERE TRUE;
        DELETE FROM ad_eventlog WHERE TRUE;
        DELETE FROM ad_eventlog_entry WHERE TRUE;
        --DELETE FROM ad_field WHERE TRUE;
        --DELETE FROM ad_field_contextmenu WHERE TRUE;
        --DELETE FROM ad_field_trl WHERE TRUE;
        --DELETE FROM ad_fieldgroup WHERE TRUE;
        --DELETE FROM ad_fieldgroup_trl WHERE TRUE;
        --DELETE FROM ad_form WHERE TRUE;
        --DELETE FROM ad_form_access WHERE TRUE;
        --DELETE FROM ad_form_trl WHERE TRUE;
        DELETE FROM ad_image WHERE AD_Image_ID >= 1000000;
        --DELETE FROM ad_impformat WHERE TRUE;
        --DELETE FROM ad_impformat_row WHERE TRUE;
        --DELETE FROM ad_index_column WHERE TRUE;
        --DELETE FROM ad_index_table WHERE TRUE;
        --DELETE FROM ad_index_table_trl WHERE TRUE;
        --DELETE FROM ad_infocolumn WHERE TRUE;
        --DELETE FROM ad_infocolumn_trl WHERE TRUE;
        --DELETE FROM ad_infowindow WHERE TRUE;
        --DELETE FROM ad_infowindow_from WHERE TRUE;
        --DELETE FROM ad_infowindow_trl WHERE TRUE;
        --DELETE FROM ad_inputdatasource WHERE TRUE;
        DELETE FROM ad_issue WHERE TRUE;
        --DELETE FROM ad_javaclass WHERE TRUE;
        --DELETE FROM ad_javaclass_type WHERE TRUE;
        --DELETE FROM ad_language WHERE TRUE;
        DELETE FROM ad_mailbox WHERE AD_Mailbox_ID NOT IN (540003);
        DELETE FROM ad_mailconfig WHERE AD_Mailbox_ID NOT IN (540003);
        --DELETE FROM ad_menu WHERE TRUE;
        --DELETE FROM ad_menu_trl WHERE TRUE;
        --DELETE FROM ad_message WHERE TRUE;
        --DELETE FROM ad_message_trl WHERE TRUE;
        --DELETE FROM ad_migrationscript WHERE TRUE;
        --DELETE FROM ad_modelvalidator WHERE TRUE;
        DELETE FROM ad_note WHERE TRUE;
        DELETE FROM ad_notificationgroup WHERE TRUE;
        --DELETE FROM ad_org WHERE TRUE;
        --DELETE FROM ad_orginfo WHERE TRUE;
        DELETE FROM ad_pinstance WHERE TRUE;
        DELETE FROM ad_pinstance_log WHERE TRUE;
        DELETE FROM ad_pinstance_para WHERE TRUE;
        DELETE FROM ad_pinstance_selectedincludedrecords WHERE TRUE;
        DELETE FROM ad_preference WHERE ad_user_id NOT IN (0, 99, 100, 150, 160, 540010, 540010, 540011, 540012, 540057, 540091, 540092, 1000000, 2188002);
        DELETE FROM ad_print_clients WHERE TRUE;
        --DELETE FROM ad_printcolor WHERE TRUE;
        --DELETE FROM ad_printer WHERE TRUE;
        --DELETE FROM ad_printer_tray WHERE TRUE;
        DELETE FROM ad_printerhw WHERE ad_printerhw_id >= 1000000;
        --DELETE FROM ad_printerrouting WHERE TRUE;
        --DELETE FROM ad_printfont WHERE TRUE;
        --DELETE FROM ad_printform WHERE TRUE;
        --DELETE FROM ad_printformat WHERE TRUE;
        --DELETE FROM ad_printformatitem WHERE TRUE;
        --DELETE FROM ad_printformatitem_trl WHERE TRUE;
        --DELETE FROM ad_printpaper WHERE TRUE;
        --DELETE FROM ad_printtableformat WHERE TRUE;
        --DELETE FROM ad_process WHERE TRUE;
        --DELETE FROM ad_process_access WHERE TRUE;
        --DELETE FROM ad_process_para WHERE TRUE;
        --DELETE FROM ad_process_para_trl WHERE TRUE;
        DELETE FROM ad_process_stats WHERE TRUE;
        --DELETE FROM ad_process_trl WHERE TRUE;
        --DELETE FROM ad_ref_list WHERE TRUE;
        --DELETE FROM ad_ref_list_trl WHERE TRUE;
        --DELETE FROM ad_ref_table WHERE TRUE;
        --DELETE FROM ad_reference WHERE TRUE;
        --DELETE FROM ad_reference_trl WHERE TRUE;
        --DELETE FROM ad_relationtype WHERE TRUE;
        --DELETE FROM ad_reportview WHERE TRUE;
        --DELETE FROM ad_role WHERE TRUE;
        --DELETE FROM ad_role_included WHERE TRUE;
        --DELETE FROM ad_role_orgaccess WHERE TRUE;
        --DELETE FROM ad_role_permrequest WHERE TRUE;
        --DELETE FROM ad_rule WHERE TRUE;
        --DELETE FROM ad_scheduler WHERE TRUE;
        --DELETE FROM ad_scheduler_para WHERE TRUE;
        DELETE FROM ad_schedulerlog WHERE TRUE;
        --DELETE FROM ad_schedulerrecipient WHERE TRUE;
        --DELETE FROM ad_searchdefinition WHERE TRUE;
        --DELETE FROM ad_sequence WHERE TRUE;
        --DELETE FROM ad_sequence_no WHERE TRUE;
        DELETE FROM ad_session WHERE TRUE;
        --DELETE FROM ad_sqlcolumn_sourcetablecolumn WHERE TRUE;
        --DELETE FROM ad_sysconfig WHERE TRUE;
        --DELETE FROM ad_system WHERE TRUE;
        --DELETE FROM ad_tab WHERE TRUE;
        --DELETE FROM ad_tab_callout WHERE TRUE;
        --DELETE FROM ad_tab_trl WHERE TRUE;
        --DELETE FROM ad_table WHERE TRUE;
        --DELETE FROM ad_table_attachmentlistener WHERE TRUE;
        --DELETE FROM ad_table_process WHERE TRUE;
        --DELETE FROM ad_table_trl WHERE TRUE;
        --DELETE FROM ad_task WHERE TRUE;
        --DELETE FROM ad_task_access WHERE TRUE;
        --DELETE FROM ad_task_trl WHERE TRUE;
        --DELETE FROM ad_tree WHERE TRUE;
        --DELETE FROM ad_treebar WHERE TRUE;
        --DELETE FROM ad_treenode WHERE TRUE;
        --DELETE FROM ad_treenodebp WHERE TRUE;
        --DELETE FROM ad_treenodemm WHERE TRUE;
        --DELETE FROM ad_treenodepc WHERE TRUE;
        --DELETE FROM ad_treenodepr WHERE TRUE;
        --DELETE FROM ad_ui_column WHERE TRUE;
        --DELETE FROM ad_ui_element WHERE TRUE;
        --DELETE FROM ad_ui_elementfield WHERE TRUE;
        --DELETE FROM ad_ui_elementgroup WHERE TRUE;
        --DELETE FROM ad_ui_section WHERE TRUE;
        --DELETE FROM ad_ui_section_trl WHERE TRUE;
        DELETE FROM ad_user WHERE ad_user_id NOT IN (0, 99, 100, 150, 160, 540010, 540010, 540011, 540012, 540057, 540091, 540092, 1000000, 2188002);
        DELETE FROM ad_user_authtoken WHERE ad_user_id NOT IN (0, 99, 100, 150, 160, 540010, 540010, 540011, 540012, 540057, 540091, 1000000, 540092, 2188002);
        DELETE FROM ad_user_orgaccess WHERE ad_user_id NOT IN (0, 99, 100, 150, 160, 540010, 540010, 540011, 540012, 540057, 540091, 1000000, 540092, 2188002);
        DELETE FROM ad_user_roles WHERE ad_user_id NOT IN (0, 99, 100, 150, 160, 540010, 540010, 540011, 540012, 540057, 540091, 540092, 1000000, 2188002);
        DELETE FROM ad_usermail WHERE ad_user_id NOT IN (0, 99, 100, 150, 160, 540010, 540010, 540011, 540012, 540057, 540091, 540092, 1000000, 2188002);
        DELETE FROM ad_userquery WHERE ad_user_id NOT IN (0, 99, 100, 150, 160, 540010, 540010, 540011, 540012, 540057, 540091, 540092, 1000000, 2188002);
        --DELETE FROM ad_val_rule WHERE TRUE;
        --DELETE FROM ad_val_rule_dep WHERE TRUE;
        --DELETE FROM ad_val_rule_included WHERE TRUE;
        DELETE FROM ad_wf_activity WHERE TRUE;
        DELETE FROM ad_wf_eventaudit WHERE TRUE;
        --DELETE FROM ad_wf_node WHERE TRUE;
        --DELETE FROM ad_wf_node_trl WHERE TRUE;
        --DELETE FROM ad_wf_nodenext WHERE TRUE;
        DELETE FROM ad_wf_process WHERE TRUE;
        --DELETE FROM ad_wf_responsible WHERE TRUE;
        --DELETE FROM ad_window WHERE TRUE;
        --DELETE FROM ad_window_access WHERE TRUE;
        --DELETE FROM ad_window_trl WHERE TRUE;
        --DELETE FROM ad_workbench WHERE TRUE;
        --DELETE FROM ad_workbench_trl WHERE TRUE;
        --DELETE FROM ad_workbenchwindow WHERE TRUE;
        --DELETE FROM ad_workflow WHERE TRUE;
        --DELETE FROM ad_workflow_access WHERE TRUE;
        --DELETE FROM ad_workflow_trl WHERE TRUE;
        --DELETE FROM ad_workflowprocessor WHERE TRUE;
        DELETE FROM ad_workflowprocessorlog WHERE TRUE;
        DELETE FROM ad_zebra_config WHERE ad_zebra_config_id NOT IN (540000);
        --DELETE FROM api_audit_config WHERE TRUE;
        DELETE FROM api_request_audit WHERE TRUE;
        DELETE FROM api_request_audit_log WHERE TRUE;
        DELETE FROM api_response_audit WHERE TRUE;
        --DELETE FROM c_acctschema WHERE TRUE;
        --DELETE FROM c_acctschema_default WHERE TRUE;
        --DELETE FROM c_acctschema_element WHERE TRUE;
        --DELETE FROM c_acctschema_gl WHERE TRUE;
        --DELETE FROM c_activity WHERE TRUE;
        DELETE FROM c_advcomrankcollection WHERE c_advcomrankcollection_id NOT IN (1000000);
        --DELETE FROM c_aggregation WHERE TRUE;
        --DELETE FROM c_aggregation_attribute WHERE TRUE;
        --DELETE FROM c_aggregationitem WHERE TRUE;
        DELETE FROM c_allocationhdr WHERE TRUE;
        DELETE FROM c_allocationline WHERE TRUE;
        DELETE FROM c_async_batch WHERE TRUE;
        --DELETE FROM c_async_batch_type WHERE TRUE;
        --DELETE FROM c_bank WHERE TRUE;
        DELETE FROM c_bp_bankaccount WHERE c_bp_bankaccount_id NOT IN (2000257);
        DELETE FROM c_bp_bankaccount_acct WHERE c_bp_bankaccount_id NOT IN (2000257);
        DELETE FROM c_bp_customer_acct WHERE C_BPartner_ID NOT IN (2155894);
        DELETE FROM c_bp_employee_acct WHERE C_BPartner_ID NOT IN (2155894);
        DELETE FROM c_bp_group WHERE c_bp_group_id NOT IN (1000000);
        DELETE FROM c_bp_group_acct WHERE c_bp_group_id NOT IN (1000000);
        DELETE FROM c_bp_relation WHERE TRUE;
        DELETE FROM c_bp_vendor_acct WHERE C_BPartner_ID NOT IN (2155894);
        DELETE FROM c_bpartner WHERE C_BPartner_ID NOT IN (2155894);
        DELETE FROM c_bpartner_attribute WHERE C_BPartner_ID NOT IN (2155894);
        DELETE FROM c_bpartner_export WHERE TRUE;
        DELETE FROM c_bpartner_location WHERE c_bpartner_location_id NOT IN (2202690);
        DELETE FROM c_bpartner_product_stats WHERE C_BPartner_ID NOT IN (2155894);
        DELETE FROM c_bpartner_stats WHERE C_BPartner_ID NOT IN (2155894);
        --DELETE FROM c_calendar WHERE TRUE;
        DELETE FROM c_campaign WHERE c_campaign_id NOT IN (1000000);
        DELETE FROM c_campaign_price WHERE TRUE;
        DELETE FROM c_cashbook WHERE c_cashbook_id NOT IN (1000000);
        DELETE FROM c_cashbook_acct WHERE c_cashbook_id NOT IN (1000000);
        DELETE FROM c_channel WHERE c_channel_id NOT IN (1000000);
        --DELETE FROM c_charge WHERE TRUE;
        --DELETE FROM c_charge_acct WHERE TRUE;
        --DELETE FROM c_charge_trl WHERE TRUE;
        --DELETE FROM c_city WHERE TRUE;
        --DELETE FROM c_compensationgroup_schema WHERE TRUE;
        DELETE FROM c_compensationgroup_schemaline WHERE TRUE;
        DELETE FROM c_contact_person WHERE ad_user_id NOT IN (100);
        DELETE FROM c_contract_change WHERE c_flatrate_transition_id >= 1000000;
        --DELETE FROM c_conversion_rate WHERE TRUE;
        --DELETE FROM c_conversiontype WHERE TRUE;
        DELETE FROM c_conversiontype_default WHERE c_conversiontype_default_id > 1000000;
        --DELETE FROM c_country WHERE TRUE;
        --DELETE FROM c_country_trl WHERE TRUE;
        --DELETE FROM c_countryarea WHERE TRUE;
        --DELETE FROM c_countryarea_assign WHERE TRUE;
        --DELETE FROM c_creditlimit_type WHERE TRUE;
        --DELETE FROM c_currency WHERE TRUE;
        --DELETE FROM c_currency_trl WHERE TRUE;
        DELETE FROM c_customer_retention WHERE TRUE;
        --DELETE FROM c_cycle WHERE TRUE;
        --DELETE FROM c_dataimport WHERE TRUE;
        DELETE FROM c_dataimport_run WHERE TRUE;
        --DELETE FROM c_doc_outbound_config WHERE TRUE;
        DELETE FROM c_doc_outbound_log WHERE TRUE;
        DELETE FROM c_doc_outbound_log_line WHERE TRUE;
        DELETE FROM c_doc_responsible WHERE ad_user_responsible_id NOT IN (100);
        --DELETE FROM c_docbasetype_counter WHERE TRUE;
        --DELETE FROM c_docline_sort WHERE TRUE;
        --DELETE FROM c_doctype WHERE TRUE;
        --DELETE FROM c_doctype_trl WHERE TRUE;
        DELETE FROM c_dunning WHERE c_dunning_id >= 1000000;
        DELETE FROM c_dunning_candidate WHERE TRUE;
        DELETE FROM c_dunningdoc WHERE TRUE;
        DELETE FROM c_dunningdoc_line WHERE TRUE;
        DELETE FROM c_dunningdoc_line_source WHERE TRUE;
        DELETE FROM c_dunninglevel WHERE c_dunninglevel_id >= 1000000;
        DELETE FROM c_dunninglevel_trl WHERE c_dunninglevel_id >= 1000000;
        --DELETE FROM c_element WHERE TRUE;
        --DELETE FROM c_elementvalue WHERE TRUE;
        --DELETE FROM c_elementvalue_trl WHERE TRUE;
        --DELETE FROM c_flatrate_conditions WHERE c_flatrate_conditions_id >= 1000000;
        DELETE FROM c_flatrate_data WHERE TRUE;
        DELETE FROM c_flatrate_term WHERE TRUE;
        --DELETE FROM c_flatrate_transition WHERE c_flatrate_transition_id >= 1000000;
        --DELETE FROM c_greeting WHERE TRUE;
        --DELETE FROM c_greeting_trl WHERE TRUE;
        --DELETE FROM c_ilcandhandler WHERE TRUE;
        --DELETE FROM c_incoterms WHERE TRUE;
        --DELETE FROM c_incoterms_trl WHERE TRUE;
        DELETE FROM c_invoice WHERE TRUE;
        DELETE FROM c_invoice_candidate WHERE TRUE;
        --DELETE FROM c_invoice_candidate_agg WHERE TRUE;
        DELETE FROM c_invoice_candidate_headeraggregation WHERE TRUE;
        DELETE FROM c_invoice_line_alloc WHERE TRUE;
        DELETE FROM c_invoiceline WHERE TRUE;
        --DELETE FROM c_invoiceschedule WHERE TRUE;
        DELETE FROM c_invoicetax WHERE TRUE;
        DELETE FROM c_location WHERE c_location_id NOT IN (2192519);
        --DELETE FROM c_olcandaggandorder WHERE TRUE;
        --DELETE FROM c_olcandprocessor WHERE TRUE;
        DELETE FROM c_order WHERE TRUE;
        DELETE FROM c_order_compensationgroup WHERE TRUE;
        DELETE FROM c_order_compensationgroupid_fordraft WHERE TRUE;
        DELETE FROM c_orderline WHERE TRUE;
        DELETE FROM c_ordertax WHERE TRUE;
        DELETE FROM c_payment WHERE TRUE;
        DELETE FROM c_payment_request WHERE TRUE;
        --DELETE FROM c_paymentterm WHERE TRUE;
        --DELETE FROM c_paymentterm_trl WHERE TRUE;
        --DELETE FROM c_period WHERE TRUE;
        --DELETE FROM c_period_trl WHERE TRUE;
        --DELETE FROM c_periodcontrol WHERE TRUE;
        --DELETE FROM c_pos_hueditor_filter WHERE TRUE;
        --DELETE FROM c_pos_profile WHERE TRUE;
        --DELETE FROM c_pos_profile_warehouse WHERE TRUE;
        --DELETE FROM c_poskey WHERE TRUE;
        --DELETE FROM c_poskeylayout WHERE TRUE;
        --DELETE FROM c_postal WHERE TRUE;
        --DELETE FROM c_pricingrule WHERE TRUE;
        DELETE FROM c_printing_queue WHERE TRUE;
        --DELETE FROM c_projecttype WHERE TRUE;
        DELETE FROM c_queue_block WHERE TRUE;
        DELETE FROM c_queue_element WHERE TRUE;
        --DELETE FROM c_queue_packageprocessor WHERE TRUE;
        --DELETE FROM c_queue_processor WHERE TRUE;
        --DELETE FROM c_queue_processor_assign WHERE TRUE;
        DELETE FROM c_queue_workpackage WHERE TRUE;
        DELETE FROM c_queue_workpackage_log WHERE TRUE;
        DELETE FROM c_queue_workpackage_param WHERE TRUE;
        DELETE FROM c_referenceno WHERE TRUE;
        DELETE FROM c_referenceno_doc WHERE TRUE;
        --DELETE FROM c_referenceno_type WHERE TRUE;
        --DELETE FROM c_region WHERE TRUE;
        --DELETE FROM c_rfq_topic WHERE TRUE;
        --DELETE FROM c_salesregion WHERE TRUE;
        DELETE FROM c_subscriptionprogress WHERE TRUE;
        --DELETE FROM c_tax WHERE TRUE;
        --DELETE FROM c_tax_acct WHERE TRUE;
        --DELETE FROM c_tax_trl WHERE TRUE;
        --DELETE FROM c_taxcategory WHERE TRUE;
        --DELETE FROM c_taxcategory_trl WHERE TRUE;
        --DELETE FROM c_uom WHERE TRUE;
        DELETE FROM c_uom_conversion WHERE TRUE;
        --DELETE FROM c_uom_trl WHERE TRUE;
        DELETE FROM c_validcombination  WHERE c_bpartner_id IS NOT NULL;
        --DELETE FROM c_year WHERE TRUE;
        --DELETE FROM dataentry_field WHERE TRUE;
        --DELETE FROM dataentry_line WHERE TRUE;
        --DELETE FROM dataentry_listvalue WHERE TRUE;
        --DELETE FROM dataentry_section WHERE TRUE;
        --DELETE FROM dataentry_subtab WHERE TRUE;
        --DELETE FROM dataentry_tab WHERE TRUE;
        --DELETE FROM datev_exportformat WHERE TRUE;
        --DELETE FROM datev_exportformatcolumn WHERE TRUE;
        DELETE FROM dd_networkdistribution WHERE dd_networkdistribution_id >= 1000000;
        DELETE FROM dd_networkdistributionline WHERE dd_networkdistribution_id >= 1000000;
        --DELETE FROM derkurier_shipper_config WHERE TRUE;
        --DELETE FROM dim_dimension_spec WHERE TRUE;
        --DELETE FROM dim_dimension_spec_attribute WHERE TRUE;
        --DELETE FROM dim_dimension_spec_attributevalue WHERE TRUE;
        --DELETE FROM dim_dimension_type WHERE TRUE;
        --DELETE FROM dlm_partition WHERE TRUE;
        --DELETE FROM dlm_partition_config WHERE TRUE;
        --DELETE FROM dlm_partition_config_line WHERE TRUE;
        --DELETE FROM dlm_partition_config_reference WHERE TRUE;
        --DELETE FROM dpd_exceptioncode WHERE TRUE;
        --DELETE FROM dpd_fileinfo WHERE TRUE;
        --DELETE FROM dpd_scancode WHERE TRUE;
        --DELETE FROM dpd_service_alt WHERE TRUE;
        --DELETE FROM dpd_shipper_config WHERE TRUE;
        DELETE FROM es_fts_index_queue WHERE TRUE;
        DELETE FROM esr_import WHERE TRUE;
        DELETE FROM esr_importfile WHERE TRUE;
        DELETE FROM esr_importline WHERE TRUE;
        --DELETE FROM exp_format WHERE TRUE;
        --DELETE FROM exp_formatline WHERE TRUE;
        --DELETE FROM exp_processor_type WHERE TRUE;
        DELETE FROM exp_replicationtrx WHERE TRUE;
        DELETE FROM exp_replicationtrxline WHERE TRUE;
        --DELETE FROM externalsystem_config WHERE TRUE;
        --DELETE FROM externalsystem_config_shopware6 WHERE TRUE;
        DELETE FROM fact_acct WHERE TRUE;
        DELETE FROM fact_acct_endingbalance WHERE TRUE;
        DELETE FROM fact_acct_log WHERE TRUE;
        DELETE FROM fact_acct_summary WHERE TRUE;
        --DELETE FROM geodb_coordinates WHERE TRUE;
        --DELETE FROM gl_category WHERE TRUE;
        DELETE FROM i_product WHERE TRUE;
        DELETE FROM i_request WHERE TRUE;
        DELETE FROM i_user WHERE TRUE;
        --DELETE FROM imp_processor_type WHERE TRUE;
        --DELETE FROM imp_requesthandler WHERE TRUE;
        --DELETE FROM imp_requesthandlertype WHERE TRUE;
        --DELETE FROM m_attribute WHERE TRUE;
        DELETE FROM m_attributeinstance WHERE TRUE;
        --DELETE FROM m_attributeset WHERE TRUE;
        DELETE FROM m_attributesetinstance WHERE m_attributesetinstance_ID>0;
        --DELETE FROM m_attributeuse WHERE TRUE;
        --DELETE FROM m_attributevalue WHERE TRUE;
        --DELETE FROM m_attributevalue_mapping WHERE TRUE;
        DELETE FROM m_cost WHERE TRUE;
        --DELETE FROM m_costelement WHERE TRUE;
        --DELETE FROM m_costtype WHERE TRUE;
        DELETE FROM m_discountschema WHERE m_discountschema_id NOT IN (1000000);
        DELETE FROM m_discountschemabreak WHERE TRUE;
        --DELETE FROM m_discountschemaline WHERE TRUE;
        --DELETE FROM m_hu_pi WHERE TRUE;
        --DELETE FROM m_hu_pi_attribute WHERE TRUE;
        --DELETE FROM m_hu_pi_item WHERE TRUE;
        DELETE FROM m_hu_pi_item_product WHERE m_hu_pi_item_product_id NOT IN (101);
        --DELETE FROM m_hu_pi_version WHERE TRUE;
        --DELETE FROM m_hu_process WHERE TRUE;
        --DELETE FROM m_iolcandhandler WHERE TRUE;
        DELETE FROM m_iolcandhandler_log WHERE TRUE;
        DELETE FROM m_locator WHERE m_warehouse_id NOT IN (540005, 540008, 540012, 1000109);
        --DELETE FROM m_material_balance_config WHERE TRUE;
        --DELETE FROM m_picking_config WHERE TRUE;
        --DELETE FROM m_picking_config_v2 WHERE TRUE;
        DELETE FROM m_pickingslot WHERE m_warehouse_id NOT IN (540005, 540008, 540012, 1000109);
        DELETE FROM m_pricelist WHERE m_pricelist_id NOT IN (2008392, 2008396, 2008394, 540005);
        DELETE FROM m_pricelist_version WHERE m_pricelist_version_id NOT IN (2002137, 2002139, 2002141, 540005);
        DELETE FROM m_pricingsystem WHERE m_pricingsystem_id NOT IN (2000837, 2000835);
        DELETE FROM m_product WHERE m_product_id > 1000000;
        DELETE FROM m_product_acct WHERE TRUE;
        --DELETE FROM m_product_category WHERE TRUE;
        --DELETE FROM m_product_category_acct WHERE TRUE;
        --DELETE FROM m_product_category_trl WHERE TRUE;
        DELETE FROM m_product_exclude_flatrateconditions WHERE TRUE;
        DELETE FROM m_product_planningschema WHERE m_product_planningschema_id >= 1000000;
        DELETE FROM m_product_trl WHERE m_product_id > 1000000;
        DELETE FROM m_productprice WHERE TRUE;
        --DELETE FROM m_propertiesconfig WHERE TRUE;
        --DELETE FROM m_propertiesconfig_line WHERE TRUE;
        --DELETE FROM m_qualityinsp_lagerkonf WHERE TRUE;
        --DELETE FROM m_qualitynote WHERE TRUE;
        --DELETE FROM m_rmatype WHERE TRUE;
        --DELETE FROM m_shipment_declaration_config WHERE TRUE;
        DELETE FROM m_shipmentschedule WHERE TRUE;
        --DELETE FROM m_shipmentschedule_attributeconfig WHERE TRUE;
        DELETE FROM m_shipmentschedule_recompute WHERE TRUE;
        --DELETE FROM m_shipper WHERE TRUE;
        DELETE FROM m_warehouse WHERE m_warehouse_id NOT IN (540005, 540008, 540012, 1000109);
        DELETE FROM m_warehouse_acct WHERE m_warehouse_id NOT IN (540005, 540008, 540012, 1000109);
        DELETE FROM m_warehouse_routing WHERE m_warehouse_id NOT IN (540005, 540008, 540012, 1000109);
        --DELETE FROM matviews WHERE TRUE;
        --DELETE FROM md_availableforsales_config WHERE TRUE;
        DELETE FROM md_candidate WHERE TRUE;
        DELETE FROM md_candidate_demand_detail WHERE TRUE;
        DELETE FROM md_cockpit WHERE TRUE;
        DELETE FROM md_cockpit_documentdetail WHERE TRUE;
        DELETE FROM mktg_campaign WHERE mktg_campaign_id NOT IN (1000000);
        DELETE FROM mktg_platform WHERE mktg_platform_id >= 1000000;
        --DELETE FROM pa_colorschema WHERE TRUE;
        --DELETE FROM pa_dashboardcontent WHERE TRUE;
        --DELETE FROM pa_measurecalc WHERE TRUE;
        --DELETE FROM pa_reportcolumn WHERE TRUE;
        --DELETE FROM pa_reportcolumnset WHERE TRUE;
        --DELETE FROM pa_reportlineset WHERE TRUE;
        --DELETE FROM pa_sla_criteria WHERE TRUE;
        --DELETE FROM r_group WHERE TRUE;
        --DELETE FROM r_interestarea WHERE TRUE;
        --DELETE FROM r_issuestatus WHERE TRUE;
        --DELETE FROM r_mailtext WHERE TRUE;
        --DELETE FROM r_mailtext_trl WHERE TRUE;
        --DELETE FROM r_request WHERE TRUE;
        --DELETE FROM r_requestaction WHERE TRUE;
        --DELETE FROM r_requestprocessor WHERE TRUE;
        DELETE FROM r_requestprocessorlog WHERE TRUE;
        --DELETE FROM r_requesttype WHERE ad_client_id NOT IN (99);
        --DELETE FROM r_requesttype_trl WHERE ad_client_id NOT IN (99);
        --DELETE FROM r_status WHERE TRUE;
        --DELETE FROM r_status_trl WHERE TRUE;
        --DELETE FROM r_statuscategory WHERE TRUE;
        DELETE FROM s_externalreference WHERE TRUE;
        DELETE FROM s_resource WHERE s_resource_id >= 1000000;
        --DELETE FROM s_resourcetype WHERE TRUE;
        DELETE FROM t_letter_spool WHERE TRUE;
        DELETE FROM t_lock WHERE TRUE;
        DELETE FROM t_query_selection WHERE TRUE;
        DELETE FROM t_query_selection_pagination WHERE TRUE;
        DELETE FROM t_query_selection_todelete WHERE TRUE;
        DELETE FROM t_webui_viewselection_todelete WHERE TRUE;
        --DELETE FROM u_web_properties WHERE TRUE;
        --DELETE FROM u_webmenu WHERE TRUE;
        --DELETE FROM virtual_col_value WHERE TRUE;
        --DELETE FROM webui_board WHERE TRUE;
        --DELETE FROM webui_board_cardfield WHERE TRUE;
        --DELETE FROM webui_board_lane WHERE TRUE;
        --DELETE FROM webui_dashboard WHERE TRUE;
        --DELETE FROM webui_dashboarditem WHERE TRUE;
        --DELETE FROM webui_dashboarditem_trl WHERE TRUE;
        --DELETE FROM webui_kpi WHERE TRUE;
        --DELETE FROM webui_kpi_field WHERE TRUE;
        -- DELETE FROM webui_kpi_field_trl WHERE TRUE;
        DELETE FROM x_bpartner_cockpit_search_mv WHERE TRUE;
        DELETE FROM yo98_c_bpartner_attribute_regional WHERE TRUE;
        --DELETE FROM yo98_job WHERE TRUE;
        DELETE FROM yo98_job_assign WHERE TRUE;
        --DELETE FROM yo98_job_category WHERE TRUE;
        DELETE FROM yo98_orgmembership WHERE TRUE;

    END $$;

