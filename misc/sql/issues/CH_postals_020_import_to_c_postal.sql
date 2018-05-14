INSERT INTO public.c_postal
SELECT
    1000000, 0, null, 107,
    nextval('c_postal_seq'),
    (select max(c_region_id) from c_region where c_country_id=107 and name = plz.kanton) as region,
    ortschaftsname as city,
    now(), 0, 'Y', 'N',
    PLZ as postal,
    null, null,
    now(), 0, null, 'N',
     null as township,
      null
from migration_data.plz_gemeinden_kantone_bezirke plz;
