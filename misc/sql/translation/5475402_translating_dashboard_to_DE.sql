--select webui_kpi_id, name,offsetname from webui_kpi_field where updated >= '2018-08-08';
UPDATE webui_kpi_field SET name = 'Gruppe', offsetname = null                  where webui_kpi_id = 1000004;
UPDATE webui_kpi_field SET name = 'Zeilennetto', offsetname = null             where webui_kpi_id = 1000004;
UPDATE webui_kpi_field SET name = 'Produkt Kategorie', offsetname = null       where webui_kpi_id = 1000008;
UPDATE webui_kpi_field SET name = 'Netto', offsetname = null                   where webui_kpi_id = 1000006;
UPDATE webui_kpi_field SET name = 'Zeilennetto', offsetname = null             where webui_kpi_id = 1000002;
UPDATE webui_kpi_field SET name = 'Zeilennetto', offsetname = null             where webui_kpi_id = 1000007;
UPDATE webui_kpi_field SET name = 'Umsatz', offsetname = null                  where webui_kpi_id = 1000009;
UPDATE webui_kpi_field SET name = 'Umsatz', offsetname = 'Umsatz letzte Woche' where webui_kpi_id = 1000005;
UPDATE webui_kpi_field SET name = 'Umsatz', offsetname = 'Umsatz letzte Woche' where webui_kpi_id = 1000008;

--select webui_kpi_id, name from webui_kpi where updated >= '2018-08-08';
UPDATE webui_kpi SET name = 'Umsatz nach Partnergruppe' WHERE webui_kpi_id = 1000004;
UPDATE webui_kpi SET name = 'Top 5 Produkte' WHERE webui_kpi_id = 1000005;
UPDATE webui_kpi SET name = 'Umsatz pro Tag' WHERE webui_kpi_id = 1000009;
UPDATE webui_kpi SET name = 'Top 5 nach Kategorie' WHERE webui_kpi_id = 1000008;
;

--select webui_dashboarditem_id, name from public.webui_dashboarditem where updated >= '2018-08-08';
UPDATE webui_dashboarditem SET  name = 'Umsatz pro Tag (letzte Woche)' where webui_dashboarditem_id = 1000023;
UPDATE webui_dashboarditem SET  name = 'Umsatz pro Tag' where webui_dashboarditem_id = 1000022;
UPDATE webui_dashboarditem SET  name = 'Top 5 Produkt Kategorien' where webui_dashboarditem_id = 1000021;
UPDATE webui_dashboarditem SET  name = 'Umsatz nach Kundengruppe' where webui_dashboarditem_id = 1000015;
UPDATE webui_dashboarditem SET  name = 'Top 5 Produkte' where webui_dashboarditem_id = 1000016;



