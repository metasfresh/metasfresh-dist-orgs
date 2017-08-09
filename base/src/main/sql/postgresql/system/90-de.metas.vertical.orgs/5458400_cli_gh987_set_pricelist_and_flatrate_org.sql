update m_pricingsystem 
set ad_org_id =0 ;

update m_pricelist  
set ad_org_id =0 ;

update m_pricelist_version 
set ad_org_id =0 ;

update m_productprice 
set ad_org_id =0 ;


update c_flatrate_conditions set ad_org_id =0 ;
update c_flatrate_transition set ad_org_id =0 ;


update C_Flatrate_Conditions 
set name = '1 Kalenderjahr'
where name='Mitgliedschaft 1 Kalenderjahr'
;


update AD_User_Roles 
set  AD_Role_ID=540024
where AD_User_ID=2188223 and AD_Role_ID=1000000;