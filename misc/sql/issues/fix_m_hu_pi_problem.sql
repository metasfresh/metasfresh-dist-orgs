DO $$
BEGIN
	IF NOT EXISTS( select * from m_hu_pi_item where m_hu_pi_item_id=101 ) THEN
		INSERT INTO public.m_hu_pi_item_product (ad_client_id, ad_org_id, c_uom_id, created, createdby, isactive, m_hu_pi_item_id, m_hu_pi_item_product_id, m_product_id, qty, updated, updatedby, description, c_bpartner_id, validfrom, validto, isinfinitecapacity, isallowanyproduct, upc, name) VALUES (0, 0, null, '2014-02-20 14:16:20.000000', 100, 'Y', 101, 101, null, 0, '2017-05-18 16:56:36.000000', 100, 'No Packing Item', null, '2001-01-01 00:00:00.000000', null, 'Y', 'Y', null, 'No Packing Item');
	END IF;
END;
$$;	

