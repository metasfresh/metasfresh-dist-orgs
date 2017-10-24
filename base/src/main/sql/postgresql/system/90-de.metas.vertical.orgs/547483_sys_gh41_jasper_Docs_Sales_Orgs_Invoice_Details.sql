DROP FUNCTION IF EXISTS de_metas_endcustomer_fresh_reports.docs_sales_orgs_invoice_details(numeric, character varying);
CREATE OR REPLACE FUNCTION de_metas_endcustomer_fresh_reports.docs_sales_orgs_invoice_details(IN c_invoice_id numeric,IN ad_language character varying)
    RETURNS TABLE(name character varying, priceactual numeric, priceentered numeric, discount numeric, lineamt numeric, isdiscountprinted character, isprinttax character, description character varying, bp_product_name character varying, startdate timestamp without time zone, enddate timestamp without time zone, productid numeric, plannedqtyperunit numeric, taxamt numeric, rate numeric, grandtotal numeric, contractyear text, iso_code character)
    LANGUAGE 'sql'
    STABLE
    COST 100    ROWS 1000 
AS $BODY$
SELECT	
	COALESCE(pt.name, p.name) AS Name,
	il.PriceActual,
	il.priceentered,
	il.Discount,
	il.linenetamt,
	i.isDiscountPrinted,
	bpg.IsPrintTax,
	il.Description,
	-- in case there is no C_BPartner_Product, fallback to the default ones
	COALESCE(NULLIF(bpp.ProductName, ''), pt.Name, p.name) as bp_product_name,
	ft.startdate,
	ft.enddate,
	p.m_product_id AS productid,
	plannedqtyperunit,
	it.taxamt,
	t.rate,
	i.grandtotal,
	to_char(ft.startdate, 'YYYY') AS contractyear,
	c.Iso_Code
	
FROM
	C_InvoiceLine il
	INNER JOIN C_Invoice i ON il.C_Invoice_ID = i.C_Invoice_ID AND i.isActive = 'Y'
	INNER JOIN C_BPartner bp ON i.C_BPartner_ID = bp.C_BPartner_ID AND bp.isActive = 'Y'
	LEFT OUTER JOIN C_BP_Group bpg ON bp.C_BP_Group_ID = bpg.C_BP_Group_ID AND bpg.isActive = 'Y'
	LEFT JOIN c_invoicetax it  ON it.C_Invoice_ID = i.C_Invoice_ID AND i.isActive = 'Y'
	INNER JOIN C_Currency c ON i.C_Currency_ID = c.C_Currency_ID AND c.isActive = 'Y'

	-- Get Flatrateterm
	LEFT JOIN c_invoice_line_alloc ila on ila.c_invoiceline_id = il.c_invoiceline_id 
	LEFT JOIN c_invoice_candidate ic on ila.C_invoice_candidate_id = ic.C_invoice_candidate_id
	LEFT JOIN c_flatrate_term ft on ic.ad_table_id = 260 and ic.record_id = ft.c_flatrate_term_id
	
	-- Get Product and its translation
	LEFT OUTER JOIN M_Product p ON il.M_Product_ID = p.M_Product_ID AND p.isActive = 'Y'
	LEFT OUTER JOIN M_Product_Trl pt ON il.M_Product_ID = pt.M_Product_ID AND pt.AD_Language = $2 AND pt.isActive = 'Y'
	LEFT OUTER JOIN LATERAL
	(
		SELECT	M_Product_Category_ID = getSysConfigAsNumeric('PackingMaterialProductCategoryID', il.AD_Client_ID, il.AD_Org_ID) AS isHU,
			M_Product_Category_ID
		FROM	M_Product_Category
		WHERE isActive = 'Y'
	) pc ON p.M_Product_Category_ID = pc.M_Product_Category_ID
	
	LEFT OUTER JOIN C_BPartner_Product bpp ON bp.C_BPartner_ID = bpp.C_BPartner_ID
		AND p.M_Product_ID = bpp.M_Product_ID AND bpp.isActive = 'Y'
		-- Tax rate
	LEFT OUTER JOIN C_Tax t ON il.C_Tax_ID = t.C_Tax_ID AND t.isActive = 'Y'

WHERE
	il.C_Invoice_ID = $1 AND il.isActive = 'Y'

$BODY$;
