/* HOW to

- Run this entire SQL on an empty metasfresh database seed
- restart app server 
- wait 15 min. (3 min. for reboot and 12 for letting metasfresh creating the sales orders)

*/

--activate c_olcand processor
update ad_scheduler
set isactive = 'Y'
where ad_scheduler_id = 550015;

-- backup before we change
create table migration_data.ad_ref_table_backup as 
select * from ad_ref_table where ad_reference_id = 540476;

-- make sure the olcand processor is not looking for EDI :
UPDATE ad_ref_table SET whereclause = 'C_OLCand.Processed=''N'' AND C_OLCand.IsActive=''Y'' AND C_OLCand.IsError=''N'' AND C_OLCand.IsImportedWithIssues=''N''' WHERE ad_reference_id = 540476;


-- prepare table holding test case data 
create table if not exists migration_data.import_colcand
(
	ad_client_id numeric(10),
	ad_org_id numeric(10),
	c_bpartner_location_id numeric(10),
	dateordered timestamp,
	m_product_id numeric(10),
	qtyentered numeric,
	c_uom_id numeric(10),
	c_bpartner_id numeric(10),
	ad_user_id numeric(10),
	m_warehouse_dest_id numeric(10),
	priceentered numeric,
	c_currency_id numeric(10),
	c_taxcategory_id numeric(10),
	createdby integer,
	updatedby integer,
	ad_user_enteredby_id integer,
	ad_datadestination_id integer,
	ad_inputdatasource_id integer
);

alter table migration_data.import_colcand owner to metasfresh;

-- populate table with test data (derived from c_order. see commented query below)
INSERT INTO migration_data.import_colcand (ad_client_id, ad_org_id, c_bpartner_location_id, dateordered, m_product_id, qtyentered, c_uom_id, c_bpartner_id, ad_user_id, m_warehouse_dest_id, priceentered, c_currency_id, c_taxcategory_id, createdby, updatedby, ad_user_enteredby_id, ad_datadestination_id, ad_inputdatasource_id) VALUES (1000000, 1000000, 2205175, '2020-04-16 00:00:00.000000', 2005577, 50, 100, 2156425, null, 540008, 1.98, 102, 1000010, 100, 100, 100, 540003, 1000002);


-- insert test case data x 1000 into c_olcand
INSERT INTO c_olcand
(c_olcand_id,
 poreference,
 ad_client_id,
ad_org_id,
c_bpartner_location_id,
 datecandidate,
m_product_id,
qtyentered,
c_uom_id,
c_bpartner_id,
 ad_user_id,
m_warehouse_dest_id,
priceentered,
c_currency_id,
c_taxcategory_id,
createdby,
 updatedby,ad_user_enteredby_id, ad_datadestination_id, ad_inputdatasource_id,
  created,updated

 )
 WITH RECURSIVE t(n) AS (
    VALUES (1)
  UNION ALL
    SELECT n+1 FROM t WHERE n < 1000
)
select nextval('c_olcand_seq'),
       nextval('c_olcand_seq') as poreference,
 ad_client_id,
ad_org_id,
c_bpartner_location_id,
 dateordered as datecandidate,
m_product_id,
qtyentered,
c_uom_id,
c_bpartner_id,
 ad_user_id,
m_warehouse_dest_id,
priceentered,
c_currency_id,
c_taxcategory_id,
 createdby,
 updatedby,ad_user_enteredby_id, ad_datadestination_id, ad_inputdatasource_id,
       now(),now()
 from migration_data.import_colcand,t;

WITH RECURSIVE t(n) AS (
    VALUES (1)
  UNION ALL
    SELECT n+1 FROM t WHERE n < 100
)
SELECT (n),'test' FROM t;



/*

-- get test case data from an existing order

      select  co.ad_client_id,
       co.ad_org_id,
       co.c_bpartner_location_id,
       co.dateordered,
       col.m_product_id,
       qtyentered,
       c_uom_id,
       co.c_bpartner_id,
        co.ad_user_id,
       co.m_warehouse_id as m_warehouse_dest_id,
       priceentered,
       co.c_currency_id,
       c_taxcategory_id,
       100 as createdby,
        100 as updatedby,100 as ad_user_enteredby_id ,540003 as ad_datadestination_id
,1000002 as ad_inputdatasource_id
from c_order co
join c_orderline col on co.c_order_id = col.c_order_id
where co.c_order_id = 1000009
;

*/