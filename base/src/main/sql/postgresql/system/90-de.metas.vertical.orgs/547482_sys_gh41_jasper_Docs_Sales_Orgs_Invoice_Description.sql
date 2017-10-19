drop function de_metas_endcustomer_fresh_reports.docs_sales_orgs_invoice_description;
CREATE OR REPLACE FUNCTION de_metas_endcustomer_fresh_reports.docs_sales_orgs_invoice_description(IN c_invoice_id numeric,IN ad_language character varying)
    RETURNS TABLE(description character varying, documentno character varying, reference character varying, dateinvoiced timestamp without time zone, vataxid character varying, bp_value character varying, cont_name text, cont_phone character varying, cont_fax character varying, cont_email character varying, sr_name text, sr_phone character varying, sr_fax character varying, sr_email character varying, printname character varying, documentnote text, letter_salutation text)
    LANGUAGE 'sql'
    STABLE
    COST 100    ROWS 1000 
AS $BODY$	
SELECT
	dt.description 	as description,
	i.documentno 	as documentno,
	i.poreference	as reference,
	i.dateinvoiced	as dateinvoiced,
	bp.VATaxID,
	bp.value	as bp_value,
	Coalesce(cogr.name, '')||
	Coalesce(' ' || cont.title, '') ||
	Coalesce(' ' || cont.firstName, '') ||
	Coalesce(' ' || cont.lastName, '') as cont_name,
	cont.phone	as cont_phone,
	cont.fax	as cont_fax,
	cont.email	as cont_email,
	Coalesce(srgr.name, '')||
	Coalesce(' ' || srep.title, '') ||
	Coalesce(' ' || srep.firstName , '')||
	Coalesce(' ' || srep.lastName, '') as sr_name,
	srep.phone	as sr_phone,
	srep.fax	as sr_fax,
	srep.email	as sr_email,
	COALESCE(dtt.PrintName, dt.PrintName) AS PrintName,
    dt.documentnote as documentnote,
	Coalesce(tcogr.letter_salutation, cogr.letter_salutation) as letter_salutation
    
FROM
	C_Invoice i
	JOIN C_BPartner bp 		ON i.C_BPartner_ID = bp.C_BPartner_ID AND bp.isActive = 'Y'
	LEFT JOIN AD_User srep	ON i.SalesRep_ID = srep.AD_User_ID AND srep.AD_User_ID<>100 AND srep.isActive = 'Y'
	LEFT JOIN AD_User cont	ON i.AD_User_ID = cont.AD_User_ID AND cont.isActive = 'Y'
	LEFT JOIN C_Greeting cogr	ON cont.C_Greeting_ID = cogr.C_Greeting_ID AND cogr.isActive = 'Y'
	LEFT JOIN C_Greeting_Trl tcogr ON cogr.C_Greeting_ID = tcogr.C_Greeting_ID AND tcogr.ad_language = $2 AND tcogr.isActive = 'Y'
	LEFT JOIN C_Greeting srgr	ON srep.C_Greeting_ID = srgr.C_Greeting_ID AND srgr.isActive = 'Y'
	LEFT OUTER JOIN C_DocType dt ON i.C_DocTypeTarget_ID = dt.C_DocType_ID AND dt.isActive = 'Y'
	LEFT OUTER JOIN C_DocType_Trl dtt ON i.C_DocTypeTarget_ID = dtt.C_DocType_ID AND dtt.AD_Language = $2 AND dtt.isActive = 'Y'

WHERE
	i.C_Invoice_ID = $1 AND i.isActive = 'Y'

$BODY$;