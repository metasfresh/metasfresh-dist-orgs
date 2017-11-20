

--select fc_name,count(*) from (
--select * from (
select  
	p.value,
	o.value,
	bp.value as bp_value,
	ft.contractstatus as "ft.contractstatus",
	ft.noticedate,
	ft.startdate as ft_startdate,
	ft.enddate as ft_enddate, 	
	ft.masterstartdate as masterstartdate,
	ft.masterenddate as masterenddate, 	
	fc.name as fc_name,
	ftt.name,	
	ft.plannedqtyperunit as ft_qty_ordered,
	ic.*,
	--sp.*
	''
	
from c_flatrate_term ft
--left join c_subscriptionprogress sp on ft.c_flatrate_term_id = sp.c_flatrate_term_id 
left join c_flatrate_conditions fc on fc.c_flatrate_conditions_id = ft.c_flatrate_conditions_id
left join c_flatrate_transition ftt on fc.c_flatrate_transition_id = ftt.c_flatrate_transition_id
left join c_invoice_candidate ic on ic.ad_table_id = 540320 and ic.record_id = ft.c_flatrate_term_id
left join ad_org o on ft.ad_org_id = o.ad_org_id
left join m_product p on ft.m_product_id = p.m_product_id 
left join c_bpartner bp on ft.dropship_bpartner_id = bp.c_bpartner_id 
left join c_bpartner bpbill on ft.bill_bpartner_id = bpbill.c_bpartner_id  -- Rechnungsempfänger
where true
--and fc_name ='Halbjahres Geschenkabo'
and ic.processed='N'

order by bp_value

-- group by fc_name
-- order by count desc
--order by sp.seqno

-- join c_bpartner_location bpl on ocl.c_bpartner_location_id = bpl.c_bpartner_location_id -- Adresse Mitglied
-- join c_bpartner_location bplbill on ocl.bill_location_id = bplbill.c_bpartner_location_id -- Adresse Mitglied
-- join ad_user u on u.ad_user_id = ocl.ad_user_id
-- join ad_user ubill on ubill.ad_user_id = ocl.bill_user_id