update es_fts_index
set isactive='Y'
where es_index='fts_bpartners'
and  isactive='N';
