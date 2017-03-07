update m_product
set ad_client_id = 99
where value != 'm01' -- keep Mitgliedschaft;
update m_product_category 
set ad_client_id = 99
where value != 'Standard' -- keep Standard;
update c_bp_group 
set ad_org_id = 0;