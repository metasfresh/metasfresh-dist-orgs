--select processed, count(*) from i_bpartner group  by processed


select
	count(i_bp) as bpartner_import,
	count(bp) as c_bpartner,
	count(bpu) as ad_user,
	count(bpl) as c_bpartner_location
	from (
select 
	ib.c_bpartner_id as i_bp,
	bp.c_bpartner_id as bp, 
	u.c_bpartner_id as bpu, 
	bpl.c_bpartner_id as bpl ,
	u.*

from i_bpartner ib 
left join c_bpartner bp on bp.c_bpartner_id = ib.c_bpartner_id
left join ad_user u on u.ad_user_id  = ib.ad_user_id 
left join c_bpartner_location bpl on bpl.c_bpartner_location_id = ib.c_bpartner_location_id 
left join c_location l  on l.c_location_id = bpl.c_location_id
where bp.value = '22213'
) foo